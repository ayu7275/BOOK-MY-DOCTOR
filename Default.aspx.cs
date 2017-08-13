using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "user" && TextBox2.Text == "user")
        {
            Response.Redirect("~/USERLOGIN/userdefault.aspx");

        }
    }
}