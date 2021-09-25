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
    public partial class userfilereport : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string reID = "RE";

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();

            if (!IsPostBack)
            {
                generateAutoId();
            }
        }
        
        
        //userdefined function
        void clearTextbox()
        {

            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";

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
                SqlCommand cmd = new SqlCommand("SELECT count(report_id) from file_report_tbl", con);
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

                string filepath = "~/file_report/crime.PNG";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("file_report/" + filename));
                filepath = "~/file_report/" + filename;


                SqlCommand cmd = new SqlCommand("INSERT INTO file_report_tbl(user_id,report_id,user_name,pincode,crime_place,date_of_crime,time,description_of_person,incident_in_detail,image_proof) values(@user_id,@report_id,@user_name,@pincode,@crime_place,@date_of_crime,@time,@description_of_person,@incident_in_detail,@image_proof)", con);

                cmd.Parameters.AddWithValue("@user_id", Session["user_id"]);
                cmd.Parameters.AddWithValue("@report_id", Label1.Text.Trim());
                cmd.Parameters.AddWithValue("@user_name", Session["full_name"]);
                cmd.Parameters.AddWithValue("@pincode", Session["pincode"]);
                cmd.Parameters.AddWithValue("@crime_place", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@date_of_crime", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@time", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@description_of_person", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@incident_in_detail", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@image_proof", filepath);


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
        //submit report click
        protected void Button4_Click1(object sender, EventArgs e)
        {
            GridView1.DataBind();
            addReport();
        }
    }
}
