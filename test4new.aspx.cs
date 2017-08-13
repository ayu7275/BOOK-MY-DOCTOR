using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class test4new : System.Web.UI.Page
{
    
    SqlConnection con = new SqlConnection("Data Source=AYUSH;Initial Catalog=DOCTORSAHAB;Integrated Security=True");

    public void Bind_ddlCountry()
    {
        
        con.Open();
        SqlCommand com = new SqlCommand("Select  countryid,country from country", con);
        SqlDataReader dr = com.ExecuteReader();
        ddCountry.DataSource = dr;
        ddCountry.Items.Clear();
        ddCountry.Items.Add("------Please select item----");
        ddCountry.DataTextField = "country";
        ddCountry.DataValueField = "countryid";
        ddCountry.DataBind();
        con.Close();




    }

    
    
   
        public void Bind_ddlState()
        {
        con.Open();
        SqlCommand com = new SqlCommand("Select  stateid,countryid,state from country_state where countryid ='"+ddCountry.SelectedValue+"'", con);
        SqlDataReader dr = com.ExecuteReader();
        ddstate.DataSource = dr;
        ddstate.Items.Clear();
        ddstate.Items.Add("------Please select State----");
        ddstate.DataTextField = "state";
        ddstate.DataValueField = "stateid";
        ddstate.DataBind();
        con.Close();


        }

public void Bind_ddlcity()
{
        con.Open();
        SqlCommand com = new SqlCommand("Select  cityid,stateid,city from state_city where stateid ='"+ddstate.SelectedValue+"'", con);
        SqlDataReader dr = com.ExecuteReader();
        ddcity.DataSource = dr;
        ddcity.Items.Clear();
        ddcity.Items.Add("------Please select city----");
        ddcity.DataTextField = "city";
        ddcity.DataValueField = "cityid";
        ddcity.DataBind();
        con.Close();


}
    


    protected void Page_Load(object sender, EventArgs e)
    {

        ddCountry.DataValueField = "Choose an country";
        if (!IsPostBack)
        {
            Bind_ddlCountry();

        }

    }
    protected void ddCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
       // Bind_ddlState();
        if (ddCountry.SelectedIndex > 1)
        {
            Bind_ddlState();


        }
        
        
    }
    protected void ddstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        Bind_ddlcity();
    }
   
}

