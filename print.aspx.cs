using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class print : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();


        string id = Request.QueryString["_pxid"].ToString();
        SqlConnection con = new SqlConnection(s);
        con.Open();
        string sql = "select * from pxbmb where pxid ='" +id+ "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter dap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        dap.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.print();</script>");
    }
}