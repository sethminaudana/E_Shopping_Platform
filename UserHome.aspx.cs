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
    public partial class UserHome : System.Web.UI.Page
    {
        public static String CS = "Data Source = SETHMINA\\SQLEXPRESS; Initial Catalog = MyShoppingDB; Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["Username"] != null)
            {
                lbl1.Text = "Welcome: " + Session["Username"].ToString().ToUpper();
                BindProductRepeater();
            }
            else
            {
                               Response.Redirect("SignIn.aspx");
            }
        }
        private void BindProductRepeater()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("procBindAllProducts", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrProducts.DataSource = dt;
                        rptrProducts.DataBind();
                        if (dt.Rows.Count <= 0)
                        {
                            //Label1.Text = "Sorry! Currently no products in this category.";
                            
                        }
                        else
                        {
                            //Label1.Text = "Showing All Products";
                        }
                    }
                }
            }
        }
    }
}