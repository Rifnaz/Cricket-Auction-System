using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace e_sport_trial.admin
{
    public partial class pgLogin_admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string userType;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

            con.Open();

            hideErrMessage();
        }

        private void userLogin()
        {

            if (txtEmail.Text == "" || txtPassword.Text == "")
            {
                if (txtEmail.Text == "")
                {
                    lblError_mail.Visible = true;
                }

                if (txtPassword.Text == "")
                {
                    lblError_pass.Visible = true;

                }
            }

            else
            {
                try
                {
                    userType = Request.QueryString["id"].ToString();
                    //open and close connection
                    //Check if entered username and password are correct

                    if (con.State == ConnectionState.Open)
                    {
                        con.Close();
                    }
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    if (userType == "admin")
                    {
                        cmd.CommandText = "select * from admin where email='" + txtEmail.Text + "'and password='" + txtPassword.Text + "'";
                        cmd.ExecuteNonQuery();

                        //sucess message
                        if (cmd.ExecuteReader().Read())
                        {
                            Response.Redirect("admin.aspx");

                            //move to dashboard
                        }
                        //error message
                        else
                        {
                            lblError.Visible = true;
                        }
                        con.Close();
                    }
                    if (userType == "player")
                    {
                        cmd.CommandText = "select * from player where Email='" + txtEmail.Text + "'and Password='" + txtPassword.Text + "'and Status=1";
                        cmd.ExecuteNonQuery();

                        //sucess message
                        if (cmd.ExecuteReader().Read())
                        {
                            Session["email"] = txtEmail.Text;
                            Response.Redirect("player-dashboard.aspx");

                            //move to dashboard
                        }
                        //error message
                        else
                        {
                            lblError.Visible = true;
                        }
                        con.Close();
                    }

                    if (userType == "owner")
                    {
                        cmd.CommandText = "select * from owner where Email='" + txtEmail.Text + "'and Password='" + txtPassword.Text + "'";
                        cmd.ExecuteNonQuery();

                        //sucess message
                        if (cmd.ExecuteReader().Read())
                        {
                            Session["email"] = txtEmail.Text;
                            Response.Redirect("team-owner-dashboard.aspx");

                            //move to dashboard
                        }
                        //error message
                        else
                        {
                            lblError.Visible = true;
                        }
                        con.Close();
                    }

                }
                catch (Exception ex)
                {
                    Console.Write(ex.Message);

                }
            }

        }


        private void emptyTextBox()
        {
            txtPassword.Text = "";
            txtEmail.Text = "";
        }

        private void hideErrMessage()
        {
            lblError_mail.Visible = false;
            lblError.Visible = false;
            lblError_pass.Visible = false;

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            userLogin();
        }
    }
}