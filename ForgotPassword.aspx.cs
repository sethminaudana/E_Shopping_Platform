using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Shopping_Web
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnResetPass_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source = SETHMINA\\SQLEXPRESS; Initial Catalog = MyShoppingDB; Integrated Security = True"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUsers where Email=@Email", con);
                cmd.Parameters.AddWithValue("@Email", txtEmailID.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    String myGUID = Guid.NewGuid().ToString();
                    int Uid = Convert.ToInt32(dt.Rows[0][0]);

                    SqlCommand cmd1 = new SqlCommand("Insert into ForgotPass(Id,Uid,RequestDateTime) values('" + myGUID + "','" + Uid + "',GETDATE())", con);
                    cmd1.ExecuteNonQuery();


                    //Send Reset link via Email
                    using (MailMessage mail = new MailMessage())
                    {
                        mail.From = new MailAddress(txtEmailID.Text);
                        mail.To.Add(txtEmailID.Text);
                        mail.Subject = "Hello World";
                        mail.Body = "<h1>Hello</h1>";
                        mail.IsBodyHtml = true;
                       // mail.Attachments.Add(new Attachment("C:\\file.zip"));

                        using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                        {
                            smtp.Credentials = new NetworkCredential("", "");
                            smtp.EnableSsl = true;
                            smtp.Send(mail);
                        }
                    }
                    //--------------


                    lblResetPassMsg.Text = "Reset Link send ! Check YOur email for reset password";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Green;
                    txtEmailID.Text = string.Empty;
                }
                else
                {
                    lblResetPassMsg.Text = "OOps! This Email Does not Exist...Try agian ";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Red;
                    txtEmailID.Text = string.Empty;
                    txtEmailID.Focus();

                }




            }
        }
    }
}