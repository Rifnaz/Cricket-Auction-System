﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace eSport
{
    public partial class login : System.Web.UI.Page
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

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            userLogin();
        }

        private void userLogin()
        {

            if(username.Text == "" || password.Text == "")
            {
                if(username.Text == "")
                {
                    errUsername.Visible = true;
                }

                if(password.Text== "")
                {
                    errPassword.Visible = true;

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
                    if(userType== "admin")
                    {
                        cmd.CommandText = "select * from admin where email='" + username.Text + "'and password='" + password.Text + "'";
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
                            errLogin.Visible = true;
                        }
                        con.Close();
                    }
                    if (userType == "player")
                    {
                        cmd.CommandText = "select * from player where Email='" + username.Text + "'and Password='" + password.Text + "'";
                        cmd.ExecuteNonQuery();

                        //sucess message
                        if (cmd.ExecuteReader().Read())
                        {
                            Response.Redirect("player-dashboard.aspx");

                            //move to dashboard
                        }
                        //error message
                        else
                        {
                            errLogin.Visible = true;
                        }
                        con.Close();
                    }

                    if (userType == "owner")
                    {
                        cmd.CommandText = "select * from owner where Email='" + username.Text + "'and Password='" + password.Text + "'";
                        cmd.ExecuteNonQuery();

                        //sucess message
                        if (cmd.ExecuteReader().Read())
                        {
                            Response.Redirect("team-owner-dashboard.aspx");

                            //move to dashboard
                        }
                        //error message
                        else
                        {
                            errLogin.Visible = true;
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
            username.Text = "";
            password.Text = "";
        }

        private void hideErrMessage()
        {
            errUsername.Visible = false;
            errPassword.Visible = false;
            errLogin.Visible=false;
                
        }


    }
}