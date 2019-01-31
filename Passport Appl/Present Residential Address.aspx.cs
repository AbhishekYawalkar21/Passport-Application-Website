using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Passport_Appl
{
    public partial class Present_Residential_Address : System.Web.UI.Page
    {
        string ins;
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\RegiLog.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["us"] == null || Session["us"].ToString() == "")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Your session has been expired!');", true);
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();
                    Response.ClearHeaders();
                    Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                    Response.AddHeader("Pragma", "no-cache");
                }
            }
            Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Response.ClearHeaders();
            Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
            Response.AddHeader("Pragma", "no-cache");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ins = "Insert into [Details](First_Name, Middle_Name, Last_Name, DOB, Email_Id, Login_Id, Password, Gender, POB, State_Ut, District, Marital_Status, PAN, Aadhar, VDM, Address, CVT, Pincode, Mobile_No, App_Date, Ser_Type) values('" + Session["fn"].ToString() + "','" + Session["mn"].ToString() + "','" + Session["ln"].ToString() + "','" + Session["dob"].ToString() + "','" + Session["emid"].ToString() + "','" + Session["logid"].ToString() + "','" + Session["pw"].ToString() + "','" + Session["gen"].ToString() + "','" + Session["pob"].ToString() + "','" + Session["su"].ToString() + "','" + Session["dis"].ToString() + "','" + Session["ms"].ToString() + "','" + Session["pan"].ToString() + "','" + Session["aadh"].ToString() + "','" + Session["vdm"].ToString() + "','" + TextBox7.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + "" + "','" + "" + "')";
            SqlCommand com = new SqlCommand(ins, con);
            try
            {
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Data has been registered!');", true);
                Button2.Visible = true;
                Button4.Visible = true;
            }
            catch
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Something went wrong!');", true);

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            DropDownList1.ClearSelection();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login PayNow.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session["us"] = null;
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
    }
}