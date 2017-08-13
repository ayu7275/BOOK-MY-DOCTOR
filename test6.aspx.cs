using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class test6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {
      

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=AYUSH;Initial Catalog=DOCTORSAHAB;Integrated Security=True");

        SqlCommand com;
        string str;

        con.Open();

        str = "Select slot from catdocdate11  where category ='" + TextBox1.Text + "'";
        com = new SqlCommand(str, con);
        SqlDataReader dd = com.ExecuteReader();
        if (dd.Read())
        {
            TextBox2.Text = dd["slot"].ToString();
            //con.Close();
        }

    }
}