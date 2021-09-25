using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Police
{
    public partial class usermissingreport : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string reID = "ME";
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();

            if (!IsPostBack)
            {
                generateAutoId();
            }
        }

        void clearTextbox()
        {

            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";

        }
        private void generateAutoId()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT count(report_id) from missing_report_tbl", con);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();
                i++;
                Label1.Text = reID + i.ToString();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void addReport()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string filepath = "~/missing_report/generaluser.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("missing_report/" + filename));
                filepath = "~/missing_report/" + filename;

                SqlCommand cmd = new SqlCommand("INSERT INTO missing_report_tbl(user_id,report_id,user_name,pincode,missing_person_name,age,place_last_seen,date_missing,time_missing,description_missing_person,missing_person_image) values(@user_id,@report_id,@user_name,@pincode,@missing_person_name,@age,@place_last_seen,@date_missing,@time_missing,@description_missing_person,@missing_person_image)", con);

                cmd.Parameters.AddWithValue("@user_id", Session["user_id"]);
                cmd.Parameters.AddWithValue("@report_id", Label1.Text.Trim());
                cmd.Parameters.AddWithValue("@user_name", Session["full_name"]);
                cmd.Parameters.AddWithValue("@pincode", Session["pincode"]);
                cmd.Parameters.AddWithValue("@missing_person_name", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@age", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@place_last_seen", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@date_missing", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@time_missing", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@description_missing_person", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@missing_person_image",filepath);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Report Added Successfully.');</script>");
                generateAutoId();
                clearTextbox();
                GridView1.DataBind();

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
            addReport();
        }
    }
}