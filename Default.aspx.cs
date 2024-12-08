using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Shopping_Platform
{
    public partial class Default : System.Web.UI.Page
    {
        public static String CS = "Data Source=SETHMINA\\SQLEXPRESS;Initial Catalog=MyShoppingDB;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["UserLogin"] == "YES")
            {
                Response.Redirect("UserHome.aspx?UserLogin=YES");
            }

            if (Session["Username"] != null)
            {
                //lblSuccess.Text = "Login Success, Welcome <b>" + Session["Username"].ToString() + "</b>";

                if (!this.IsPostBack)
                {
                    BindProductRepeater();
                    btnSignUP.Visible = false;
                    btnSignIN.Visible = false;
                    btnlogout.Visible = true;
                }

            }
            else
            {
                BindProductRepeater();
                btnSignUP.Visible = true;
                btnSignIN.Visible = true;
                btnlogout.Visible = false;
                //Response.Redirect("Default.aspx");
                Response.Write("<script type='text/javascript'>alert('Login plz')</script>");

            }
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
    }
}