using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, System.EventArgs e)
    {
       // MessageBox.Show("HI");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {


        if (!string.IsNullOrEmpty(TextBox1.Text))
        {
            SqlConnection con = new SqlConnection(@"Data Source=AYUSH;Initial Catalog=DOCTORSAHAB;Integrated Security=True");
            con.Open();
            string ww = "Select id from test1new where userid='" + TextBox1.Text + "'";
            SqlCommand ee = new SqlCommand(ww, con);
            SqlDataReader dd = ee.ExecuteReader();
            if (dd.HasRows)
            {
                Label1.Text = "Username not available enter other username";
                Label1.ForeColor = System.Drawing.Color.Red;
                //TextBox2.Enabled=false;
                TextBox1.Text = null;
                //Button1.Enabled = false;
            }
            else
            {
                Label1.Text = "Username  available ";
                Label1.ForeColor = System.Drawing.Color.Blue;
                TextBox2.Enabled = true;
                //Button1.Enabled = true;


            }

        }
        else
        {
            TextBox2.Enabled = false;


        }


    }
      
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(TextBox2.Text))
        {
            Button1.Enabled = true;

        }
        else
        {

            Button1.Enabled = false;


        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "333")
        {

            Button6.Enabled = false;

        }
    }
}