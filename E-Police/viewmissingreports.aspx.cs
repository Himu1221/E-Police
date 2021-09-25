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
    public partial class viewmissingreports : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //add response function
        void addResponse()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string filepath = "~/update_response/crime.PNG";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("update_response/" + filename));
                filepath = "~/update_response/" + filename;


                SqlCommand cmd = new SqlCommand("INSERT INTO user_response_tbl(report_id,user_id,subject,contact,information,image) values(@report_id,@user_id,@subject,@contact,@information,@image)", con);


                cmd.Parameters.AddWithValue("@report_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@user_id", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@subject", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@information", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@image", filepath);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Response Added Successfully.');</script>");

                clearTextbox();
                GridView1.DataBind();

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
        bool checkReportExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from missing_report_tbl where report_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void clearTextbox()
        {

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkReportExists())
            {
                addResponse();
                clearTextbox();
            }
            else
            {
                Response.Write("<script>alert('Report does not Exist!');</script>");
            }
        }
    }
}