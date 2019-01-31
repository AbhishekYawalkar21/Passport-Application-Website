using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Passport_Appl
{
    public partial class Applicant_Details : System.Web.UI.Page
    {
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            RadioButtonList1.ClearSelection();
            RadioButtonList2.ClearSelection();
            RadioButtonList3.ClearSelection();
            RadioButtonList4.ClearSelection();
            DropDownList1.ClearSelection();
            DropDownList3.ClearSelection();
            DropDownList4.ClearSelection();
            DropDownList5.ClearSelection();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["appname1"] = ((TextBox1.Text) + "" + (TextBox3.Text));
            Session["gen"] = RadioButtonList1.SelectedItem.Text;
            Session["pob"] = TextBox5.Text;
            Session["su"] = DropDownList1.SelectedItem.Text;
            Session["dis"] = TextBox9.Text;
            Session["ms"] = DropDownList3.SelectedItem.Text;
            Session["pan"] = TextBox6.Text;
            Session["aadh"] = TextBox7.Text;
            Session["vdm"] = TextBox8.Text;
            Response.Redirect("Present Residential Address.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session["us"] = null;
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
    }
}