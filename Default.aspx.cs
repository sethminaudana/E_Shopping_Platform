﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Shopping_Platform
{
    public partial class Default : System.Web.UI.Page
    {
        public static String CS = "Data Source=database-eshop.c7a4ywom6hd9.ap-southeast-1.rds.amazonaws.com;Initial Catalog=eshopAWS;User ID=admin;Password=seve123#";
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.QueryString["UserLogin"] == "YES")
           // {
          //      Response.Redirect("UserHome.aspx?UserLogin=YES");
         //   }

            if (Session["Username"] != null)
            {
                //lblSuccess.Text = "Login Success, Welcome <b>" + Session["Username"].ToString() + "</b>";

                if (!this.IsPostBack)
                {
                    BindProductRepeater();
                    btnSignUP.Visible = false;
                    btnSignIN.Visible = false;
                    btnlogout.Visible = true;
                    cartid.Visible = true ;
                    pCount.Visible = true ;
                }

            }
            else
            {
                BindProductRepeater();
                btnSignUP.Visible = true;
                btnSignIN.Visible = true;
                btnlogout.Visible = false;
                cartid.Visible = false;
                pCount.Visible = false;
                //Response.Redirect("Default.aspx");
                //   Response.Write("<script type='text/javascript'>alert('Login plz')</script>");

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
             protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Session.RemoveAll();
            Response.Redirect("Default.aspx");
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
                            pCount.InnerHtml = "0";
                        }
                        else
                        {
                            //Label1.Text = "Showing All Products";
                        }
                    }
                }
            }
        }

        protected override void InitializeCulture()
        {
            CultureInfo ci = new CultureInfo("en-IN");
            ci.NumberFormat.CurrencySymbol = "$";
            Thread.CurrentThread.CurrentCulture = ci;

            base.InitializeCulture();
        }
    }
    
}