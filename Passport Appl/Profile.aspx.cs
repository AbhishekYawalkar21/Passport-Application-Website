using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Passport_Appl
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\RegiLog.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fetchdata = "select First_Name, Middle_Name, Last_Name, DOB, Gender, POB, District, Address, Pincode from [Details] where Login_Id = '" + log.Text + "'";
            SqlCommand cmd = new SqlCommand(fetchdata, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Panel1.Visible = true;
                while (dr.Read())
                {
                    TextBox5.Text = dr[0].ToString();
                    TextBox6.Text = dr[1].ToString();
                    TextBox4.Text = dr[2].ToString();
                    TextBox9.Text = dr[3].ToString();
                    TextBox8.Text = dr[4].ToString();
                    TextBox10.Text = dr[5].ToString();
                    TextBox15.Text = dr[6].ToString();
                    TextBox13.Text = dr[7].ToString();
                    TextBox14.Text = dr[8].ToString();
                }
            }
            else
            {
                Panel1.Visible = false;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Sorry! Your profile does not exist.');", true);
            }
            con.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}