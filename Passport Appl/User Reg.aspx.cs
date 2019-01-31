using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Passport_Appl
{
    public partial class User_Reg : System.Web.UI.Page
    {
        string ins;
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\RegiLog.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            ins = "Insert into [RegLog](First_Name, Middle_Name, Last_Name, DOB, Email_Id, Login_Id, Password) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";
            SqlCommand com = new SqlCommand(ins, con);
            try
            {
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Registration Successfully done!');", true);

            }
            catch
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Entered login id is already in use. Please try something different!');", true);

            }
            finally
            {
                con.Close();
            }
        }
      
        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["fn"] = TextBox1.Text;
            Session["mn"] = TextBox2.Text;
            Session["ln"] = TextBox3.Text;
            Session["dob"] = TextBox4.Text;
            Session["emid"] = TextBox5.Text;
            Session["logid"] = TextBox6.Text;
            Session["pw"] = TextBox7.Text;
            Response.Redirect("Login.aspx");
        }
        
        protected void Button2_Click1(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            RadioButtonList1.ClearSelection();
            DropDownList1.ClearSelection();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}