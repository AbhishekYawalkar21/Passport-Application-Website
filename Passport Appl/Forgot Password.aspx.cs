using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Passport_Appl
{
    public partial class Forgot_Password : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\RegiLog.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string check = "update [RegLog] set [Password] = '" + pass.Text + "' where Login_Id  = '" + log.Text + "'";
                SqlCommand com = new SqlCommand(check, con);
                con.Open();
                int temp = Convert.ToInt32(com.ExecuteNonQuery().ToString());
                con.Close();
                if (temp == 1)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Password has been changed!');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Entered Login Id might be incorrect!');", true);
                }
            }
            catch
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Entered Login Id might be incorrect!');", true);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}