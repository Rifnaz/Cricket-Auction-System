using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
using System.Diagnostics.Contracts;

namespace e_sport_trial.player
{
    public partial class pgRegister : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            // Check the Connection Status & close/Open it
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            clear_labels();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Read from values
            String first = txtFirst.Text;
            String last = txtLast.Text;
            String email = txtEmail.Text;
            String dob = txtDob.Text;
            String role = dplRole.Text;
            String runs = txtRuns.Text;
            String wicket = txtWickets.Text;
            String matches = txtmatch.Text;
            String arm = dplArm.Text;
            String image = txtImage.Text;
            String pass = txtPassword.Text;
            String conpass = txtConpass.Text;

            clear_labels();

            // Validations
            if (first == "")
            {
                lblError_first.Text = "This field is required !";
            }
            if (last == "")
            {
                lblError_last.Text = "This field is required !";
            }
            if (email == "")
            {
                lblError_mail.Text = "This field is required !";
            }
            if (dob == "")
            {
                lblError_dob.Text = "This field is required !";
            }
            if (role == "")
            {
                lblError_role.Text = "This field is required !";
            }
            if (runs == "")
            {
                lblError_runs.Text = "This field is required !";
            }
            if (wicket == "")
            {
                lblError_wickets.Text = "This field is required !";
            }
            if (matches == "")
            {
                lblError_match.Text = "This field is required !";
            }
            if (arm == "")
            {
                lblError_arm.Text = "This field is required !";
            }
            if (image == "")
            {
                lblError_image.Text = "This field is required !";
            }
            if (pass == "")
            {
                lblError_pass.Text = "This field is required !";
            }
            if (conpass == "")
            {
                lblError_conpass.Text = "This field is required !";
            }
            else if (pass == conpass)
            {
                //Interact with Table
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into player(FirstName, LastName, Email, Dob, Role, Run, Wickets, Matches, ArmStyle, Image, BasePrice, Password) values('" + first + "', '" + last + "', '" + email + "', '" + dob + "', '" + role + "', '" + runs + "', '" + wicket + "', '" + matches + "', '" + arm + "', '" + image + "', '" + "Pending..." + "', '" + pass + "' )";
                cmd.ExecuteNonQuery();

                clear_labels();
                clear_textboxes();
            }
            else
            {
                lblError.Text = "Password does not match !";
                txtPassword.Text = "";
                txtConpass.Text = "";
            }
        }

        private void clear_labels()
        {
            lblError.Text = "";
            lblError_arm.Text = "";
            lblError_conpass.Text = "";
            lblError_dob.Text = "";
            lblError_first.Text = "";
            lblError_image.Text = "";
            lblError_last.Text = "";
            lblError_mail.Text = "";
            lblError_match.Text = "";
            lblError_pass.Text = "";
            lblError_role.Text = "";
            lblError_runs.Text = "";
            lblError_wickets.Text = "";
        }

        private void clear_textboxes()
        {
            txtFirst.Text = "";
            txtLast.Text = "";
            txtEmail.Text = "";
            txtDob.Text = "";
            dplRole.Text = "";
            txtRuns.Text = "";
            txtWickets.Text = "";
            txtmatch.Text = "";
            dplArm.Text = "";
            txtImage.Text = "";
            txtPassword.Text = "";
            txtConpass.Text = "";
        }
    }
}