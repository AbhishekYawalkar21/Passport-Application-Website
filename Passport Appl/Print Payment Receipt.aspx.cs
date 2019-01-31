using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

namespace Passport_Appl
{
    public partial class Print_Payment_Receipt : System.Web.UI.Page
    {
        string ins;
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
            try
            {
                ins = "select First_Name, Last_Name, DOB, App_Date, Ser_Type from [Details] where Login_Id  = '" + Session["loginid"].ToString() + "'";
                SqlCommand com = new SqlCommand(ins, con);
                con.Open();
                SqlDataReader dr = com.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Label10.Text = dr[0].ToString();
                        Label11.Text = dr[1].ToString();
                        Label12.Text = dr[2].ToString();
                        Label14.Text = dr[3].ToString();
                        Label13.Text = dr[4].ToString();
                        Label15.Text = "Normal";
                        Label16.Text = "Success";
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Print can not be taken.');", true);
                }
                con.Close();
            }
            catch
            {
                btnPrint.Enabled = false;
                Button1.Enabled = false;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Print can not be taken.');", true);
            }
            
            Random rnd = new Random();

            byte[] buf = new byte[8];
            rnd.NextBytes(buf);
            long longRand = BitConverter.ToInt64(buf, 0);

            long result = (Math.Abs(longRand % (2000000000000000 - 1000000000000000)) + 1000000000000000);

            long random_seed = (long)rnd.Next(1000, 5000);
            random_seed = random_seed * result + rnd.Next(1000, 5000);

            Label9.Text= ((long)(random_seed / 655) % 10000000000000001).ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Appointment Confirmation Receipt.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter stringWriter = new StringWriter();
            HtmlTextWriter htmlTextWriter = new HtmlTextWriter(stringWriter);
            printrec.RenderControl(htmlTextWriter);
            StringReader stringReader = new StringReader(stringWriter.ToString());
            Document Doc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(Doc);
            PdfWriter.GetInstance(Doc, Response.OutputStream);
            Doc.Open();
            htmlparser.Parse(stringReader);
            Doc.Close();
            Response.Write(Doc);
            Response.End();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session["loginid"] = null;
            Session.RemoveAll();
            Response.Redirect("Login PayNow.aspx");
        }
    }
}