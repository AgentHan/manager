using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Linq;
public partial class user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["user"] == null)
        //{
        //    Response.Redirect("index.aspx");
        //}
        //else
        //{


        //    string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        //    SqlConnection con = new SqlConnection(s);
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select Role  from UserInfo where username='" + Session["user"].ToString() + "'", con);
        //    string a = cmd.ExecuteScalar().ToString();
        //    con.Close();
          
          
        //     if (a == "领导")
        //    {
                
        //    }
           
        //    else
        //    {
        //        Response.Redirect("wq.aspx");
               
        //    }
        //}

        }




    void griddisp()
    {
        if (Txtsearch.Text.Trim() == "")
            return;
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();

        SqlConnection con = new SqlConnection(s);
        con.Open();
 DataSet ds = new DataSet();
        string constrsql = "select a.*,b.*,c.* from a," +
            "(select pxid,sum(money) pxzc from pxzcb group by pxid) c" +
            "right join (select pxid,sum(jfje)jfhj,count(pxid)peoplecount from pxbmb group by pxid) b on c" +
            "where a.pxid=b.pxid and a.pxsj=" + Txtsearch.Text;
        SqlCommand cmd = new SqlCommand(constrsql, con);
        SqlDataAdapter dap = new SqlDataAdapter(cmd);
       
        dap.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
            

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e) {

        griddisp();
       
    }

    protected void HyperLink1_DataBinding(object sender, EventArgs e)
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ToString();
        
        SqlConnection con = new SqlConnection(s);
        
        con.Open();
        string str = "select * from pxzcb where pxid='" +e.ToString() + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataAdapter dap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        dap.Fill(ds);

        GridView3.DataSource = ds.Tables[0];
        GridView3.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Clear();

        Response.AddHeader("content-disposition", "attachment;filename=FileName.xlsx");

        Response.Charset = "gb2312";

        Response.ContentType = "application/vnd.xlsx";

        System.IO.StringWriter stringWrite = new System.IO.StringWriter();

        System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);


        GridView1.AllowPaging = false;
        griddisp();


        Response.Write(stringWrite.ToString());

        Response.End();

        GridView1.AllowPaging = true;
        griddisp();
    }

    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        //string s = ConfigurationManager.ConnectionStrings["constr"].ToString();
        //string id = e.ToString();
        //string sqlstr = "delete from pxxx where pxid='" + id + "'";
        //SqlConnection con = new SqlConnection(s);
        //con.Open();
        //SqlCommand cmd = new SqlCommand(sqlstr, con);
        //cmd.ExecuteNonQuery();
        //con.Close();
        //griddisp();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }

}