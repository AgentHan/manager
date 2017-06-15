using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class show : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();


        string stu = Request.QueryString["px"].ToString();
        SqlConnection con = new SqlConnection(s);
        con.Open();
        string sql = "select * from pxxx where pxid ='" + stu + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            for (int i = 0; i < dr.FieldCount; i++)
                TextBox1.Text += dr.GetValue(i).ToString() + "\r\n";
        }


    }
}