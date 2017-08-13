using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class home_LOGINFORM : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        
        
            SqlConnection con = new SqlConnection("Data Source=AYUSH;Initial Catalog=DOCTORSAHAB;Integrated Security=True");
            con.Open();
            string s = "Select id from userregistration where userid='" + TextBox1.Text + "' ";
            SqlCommand ee = new SqlCommand(s, con);
            SqlDataReader dd = ee.ExecuteReader();
            if (dd.HasRows)
            {
                //Label1.Visible = true;
                //Label1.Text = "WELCOME user";
                //Label1.ForeColor = System.Drawing.Color.Green;

                Response.Redirect("~/USERLOGIN/userdetails.aspx?nm=" + TextBox1.Text);


            }

            else
            {
                Label1.Visible = true;
                Label1.Text = "USER NOT REGISTERED";

                Label1.ForeColor = System.Drawing.Color.Red;
            }



        }
    }
