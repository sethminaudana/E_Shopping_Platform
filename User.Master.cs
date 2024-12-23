using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Shopping_Platform
{
    public partial class User : System.Web.UI.MasterPage
    {
        public static String CS = "Data Source=SETHMINA\\SQLEXPRESS;Initial Catalog=MyShoppingDB;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                //lblSuccess.Text = "Login Success, Welcome <b>" + Session["Username"].ToString() + "</b>";
                btnlogout.Visible = true;
                
                BindCartNumber22();
               

            }
            else
            {
              
                //Response.Redirect("~/Default.aspx");

            }
        }
        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;

            Response.Redirect("Default.aspx");

        }

        
        public void BindCartNumber()
        {
            if (Request.Cookies["CartPID"] != null)
            {
                string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                string[] ProductArray = CookiePID.Split(',');
                int ProductCount = ProductArray.Length;
                pCount.InnerText = ProductCount.ToString();
            }
            else
            {
                pCount.InnerText = 0.ToString();
            }
        }

        public void BindCartNumber22()
        {
            if (Session["USERID"] != null)
            {
                string UserIDD = Session["USERID"].ToString();
                DataTable dt = new DataTable();
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("SP_BindCartNumberz", con)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.AddWithValue("@UserID", UserIDD);
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {
                            string CartQuantity = dt.Compute("Sum(Qty)", "").ToString();
                            pCount.InnerText = CartQuantity;

                        }
                        else
                        {
                            pCount.InnerText = 0.ToString();
                        }
                    }
                }
            }
        }
    }
}