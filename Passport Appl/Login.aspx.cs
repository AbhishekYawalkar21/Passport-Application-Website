﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Passport_Appl
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\RegiLog.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string check = "select count(*) from [RegLog] where Login_Id  = '" + log.Text + "' and Password = '" + pass.Text + "'";
            SqlCommand com = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                Session["us"] = log.Text;
                Response.Redirect("Applicant Details.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Something went wrong!');", true);
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forgot Password.aspx");
        }
    }
}