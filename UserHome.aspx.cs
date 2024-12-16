using System;
using System.Collections.Generic;
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
            }
            else
            {
                               Response.Redirect("SignIn.aspx");
            }
        }
    }
}