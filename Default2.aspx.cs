using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //testbtn.Attributes["onclick"] = "return vals();";
        if (!IsPostBack)
        {
            //BindData();
        }

    }

    //private void BindData()
    //{
    //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["uscresellall"].ConnectionString);
    //    SqlDataAdapter da = new SqlDataAdapter("SELECT id,descp,price FROM bikes", con);
    //    DataTable dt = new DataTable();
    //    da.Fill(dt);
    //    GridView1.DataSource = dt;
    //    GridView1.DataBind();
    //}

    //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    //{
    //    GridView1.EditIndex = e.NewEditIndex;
    //    BindData();
    //}

    //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    //{
    //    GridView1.EditIndex = -1;
    //    BindData();
    //}

    //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    //{

    //    if (((LinkButton)GridView1.Rows[0].Cells[0].Controls[0]).Text == "Insert")
    //    {
            
    //    }
    //    else
    //    {
    //        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["uscresellall"].ConnectionString);
    //        SqlCommand cmd = new SqlCommand();
    //        cmd.CommandText = "UPDATE bikes SET descp=@cat_name,price=@price WHERE id=@cat_id";
    //        cmd.Parameters.Add("@cat_name", SqlDbType.VarChar).Value = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
    //        cmd.Parameters.Add("@cat_id", SqlDbType.Int).Value = Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[1].Text);
    //        cmd.Parameters.Add("@price", SqlDbType.Int).Value = Convert.ToInt32(((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text);
    //        cmd.Connection = con;
    //        con.Open();
    //        cmd.ExecuteNonQuery();
    //        con.Close();

    //    }


    //    GridView1.EditIndex = -1;
    //    BindData();
    //}

    //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["uscresellall"].ConnectionString);
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = "DELETE FROM bikes WHERE id=@cat_id";
    //    cmd.Parameters.Add("@cat_id", SqlDbType.Int).Value = Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[1].Text);

    //    cmd.Connection = con;
    //    con.Open();
    //    cmd.ExecuteNonQuery();
    //    con.Close();

    //    BindData();

    //}

    //protected void grdView_PageIndexChanging(Object sender, GridViewPageEventArgs e)
    //{
    //    GridView1.PageIndex = e.NewPageIndex;
    //    BindData();
    //}
}