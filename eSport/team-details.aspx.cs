using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace eSport
{
    public partial class team_details : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

            con.Open();

            loadTeam();
        }

        private void loadTeam()
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            //select command

            id = Convert.ToInt32(Request.QueryString["id"].ToString());

            SqlCommand Com = new SqlCommand("select * from team where TeamID='" + id + "'", con);
            SqlDataReader DR1 = Com.ExecuteReader();
            if (DR1.Read())
            {
                string url = DR1.GetValue(3).ToString();
                teamBanner.ImageUrl = url;

                lb_teamName.Text= DR1.GetValue(4).ToString();
            }


        }
    }
}