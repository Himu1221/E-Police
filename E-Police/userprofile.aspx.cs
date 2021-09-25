using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Police
{
    public partial class userprofile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataBind();
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from user_master_tb1 where user_id='" + Session["user_id"] + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {

                        TextBox1.Text = dr.GetValue(8).ToString();
                        TextBox2.Text = dr.GetValue(9).ToString();
                        TextBox3.Text = dr.GetValue(0).ToString();
                        TextBox4.Text = dr.GetValue(1).ToString();
                        TextBox5.Text = dr.GetValue(2).ToString();
                        TextBox6.Text = dr.GetValue(3).ToString();
                        TextBox7.Text = dr.GetValue(4).ToString();
                        TextBox8.Text = dr.GetValue(5).ToString();
                        DropDownList1.Text = dr.GetValue(6).ToString();
                        TextBox10.Text = dr.GetValue(7).ToString();

                    }

                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //update button link
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox11.Text == "")
            {
                Response.Write("<script>alert('please enter the  proper details!');</script>");
            }
            else if (Session["password"].ToString() != TextBox9.Text)
            {
                Response.Write("<script>alert('old password is incorrect!');</script>");
            }
            else if (TextBox9.Text == TextBox11.Text)
            {
                Response.Write("<script>alert('old and new password can not be same!Please choose new password!');</script>");
            }
            else
            {
                updateUser();
            }


        }
        //user defined function.
        void updateUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE user_master_tb1 SET password=@password WHERE user_id='" + TextBox2.Text.Trim() + "'", con);


                cmd.Parameters.AddWithValue("@password", TextBox11.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Updated Successfully.');</script>");
                TextBox9.Text = "";
                TextBox11.Text = "";
                DataBind();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}