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
    public partial class addemployee : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void clearText()
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
         
            DropDownList1.Text = "";

        }
        bool checkUserExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from employee_master_tbl where system_id='" + TextBox2.Text.Trim() + "';", con);
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
        void signUpNewOfficer()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string filepath = "~/officer_log/crime.PNG";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("officer_log/" + filename));
                filepath = "~/officer_log/" + filename;


                SqlCommand cmd = new SqlCommand("INSERT INTO employee_master_tbl(police_station_name,contact_no,officer_id,officer_name,aadhar_card,pincode,state,city,station_address,system_id,password,officer_image_link) values(@police_station_name,@contact_no,@officer_id,@officer_name,@aadhar_card,@pincode,@state,@city,@station_address,@system_id,@password,@officer_image_link)", con);
                cmd.Parameters.AddWithValue("@police_station_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@officer_id", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@officer_name", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@aadhar_card", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@station_address", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@system_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@officer_image_link", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Added Up Successfully. Go to Officer login to Login');</script>");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkUserExists())
            {

                Response.Write("<script>alert('Officer Already Exist with this System ID, try other ID');</script>");
            }
            else
            {
                signUpNewOfficer();
                clearText();
                Response.Redirect("adminemployeemanagement.aspx");
            }
        }
    }
}