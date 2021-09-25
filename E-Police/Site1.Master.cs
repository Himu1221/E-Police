using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Police
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; // user login link button
                    LinkButton2.Visible = true; // sign up link button

                    LinkButton3.Visible = false; // logout link button
                    LinkButton7.Visible = false; // hello user link button


                    LinkButton6.Visible = true; // admin login link button
                    LinkButton11.Visible = true; // employee login link button

                    LinkButton4.Visible = false; //user profile link button
                    LinkButton5.Visible = false; // file report link button
                    LinkButton8.Visible = false; // missing report link button
                    LinkButton15.Visible = false; // view response link button
                    LinkButton9.Visible = false; // any issuest link button
                    LinkButton10.Visible = false; //employee management link button
                    LinkButton12.Visible = false; // user issues link button
                    LinkButton13.Visible = false; // view cases link button
                    LinkButton14.Visible = false; // update response link button
                    LinkButton16.Visible = false; // view missing reports link button
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello " + Session["user_id"].ToString();


                    LinkButton6.Visible = false; // admin login link button
                    LinkButton11.Visible = false; // employee login link button

                    LinkButton4.Visible = true; //user profile link button
                    LinkButton5.Visible = true; // file report link button
                    LinkButton8.Visible = true; // missing report link button
                    LinkButton15.Visible = true; // view response link button
                    LinkButton9.Visible = true; // any issuest link button
                    LinkButton10.Visible = false; //employee management link button
                    LinkButton12.Visible = false; // user issues link button
                    LinkButton13.Visible = false; // view cases link button
                    LinkButton14.Visible = false; // update response link button
                    LinkButton16.Visible = false; // view missing reports link button
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello Admin";


                    LinkButton6.Visible = false; // admin login link button
                    LinkButton11.Visible = false; // employee login link button

                    LinkButton4.Visible = false; //user profile link button
                    LinkButton5.Visible = false; // file report link button
                    LinkButton8.Visible = false; // missing report link button
                    LinkButton15.Visible = false; // view response link button
                    LinkButton9.Visible = false; // any issuest link button
                    LinkButton10.Visible = true; //employee management link button
                    LinkButton12.Visible = true; // user issues link button
                    LinkButton13.Visible = false; // view cases link button
                    LinkButton14.Visible = false; // update response link button
                    LinkButton16.Visible = false; // view missing reports link button
                }
                else if (Session["role"].Equals("employee"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello " + Session["user_id"].ToString();


                    LinkButton6.Visible = false; // admin login link button
                    LinkButton11.Visible = false; // employee login link button

                    LinkButton4.Visible = false; //user profile link button
                    LinkButton5.Visible = false; // file report link button
                    LinkButton8.Visible = false; // missing report link button
                    LinkButton15.Visible = false; // view response link button
                    LinkButton9.Visible = false; // any issuest link button
                    LinkButton10.Visible = false; //employee management link button
                    LinkButton12.Visible = false; // user issues link button
                    LinkButton13.Visible = true; // view cases link button
                    LinkButton14.Visible = true; // update response link button
                    LinkButton16.Visible = true; // view missing reports link button
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("employeelogin.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("userfilereport.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("usermissingreport.aspx");
        }

        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewresponse.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("useraddissues.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminemployeemanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminuserissues.aspx");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewcases.aspx");
        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateresponse.aspx");
        }
        protected void LinkButton16_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewmissingreports.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

            Session["user_id"] = "";
            Session["full_name"] = "";
            Session["role"] = "";

            LinkButton1.Visible = true; // user login link button
            LinkButton2.Visible = true; // sign up link button

            LinkButton3.Visible = false; // logout link button
            LinkButton7.Visible = false; // hello user link button


            LinkButton6.Visible = true; // admin login link button
            LinkButton11.Visible = true; // employee login link button

            LinkButton4.Visible = false; //user profile link button
            LinkButton5.Visible = false; // file report link button
            LinkButton8.Visible = false; // missing report link button
            LinkButton15.Visible = false; // view response link button
            LinkButton9.Visible = false; // any issuest link button
            LinkButton10.Visible = false; //employee management link button
            LinkButton12.Visible = false; // user issues link button
            LinkButton13.Visible = false; // view cases link button
            LinkButton14.Visible = false; // update response link button
            Response.Redirect("homepage.aspx");


        }
    }
}