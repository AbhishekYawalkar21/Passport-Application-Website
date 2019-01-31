using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Passport_Appl
{
    public partial class Pay_and_SchdApp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\RegiLog.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["loginid"] == null || Session["loginid"].ToString() == "")
                {
                    Response.Redirect("Login PayNow.aspx");
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Your session has been expired!');", true);
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


            if (Session["appname"] == null || Session["appname"].ToString() == "" )
            {
                TextBox1.Text = ""; 
            }
            else
            {
                TextBox1.Text = Session["appname"].ToString();

            }
        }
        public DateTime crd1()
        {

            Random gen = new Random();
            int range = 3 * 12;
            DateTime randomDate = DateTime.Today.AddDays(gen.Next(range));
            return randomDate;

        }

        public DateTime crd2()
        {

            Random gen = new Random();
            int range = 3 * 12;
            DateTime randomDate = DateTime.Today.AddDays(4 + gen.Next(range));
            return randomDate;
        }
        public DateTime crd3()
        {

            Random gen = new Random();
            int range = 4 * 12;
            DateTime randomDate = DateTime.Today.AddDays(8 + gen.Next(range));
            return randomDate;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ins = "update [Details] set App_Date='" + TextBox5.Text + "',Ser_Type='" + RadioButtonList1.SelectedItem + "' where Login_Id='" + Session["loginid"].ToString() + "'";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();

            Session["mobno"] = TextBox4.Text;
            Response.Redirect("Card Details.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            RadioButtonList1.ClearSelection();
            DropDownList1.ClearSelection();
            TextBox4.Text = "";
            TextBox5.Text="";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label10.Text = crd1().ToLongDateString();
            Label11.Text = crd2().ToLongDateString();
            Label12.Text = crd3().ToLongDateString();
            Table1.Visible = true;
            Button3.Enabled = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session["loginid"] = null;
            Session.RemoveAll();
            Response.Redirect("Login PayNow.aspx");
        }
    }
}