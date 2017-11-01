using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BikesList : System.Web.UI.Page
{



    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Button1.Attributes["onclick"] = "return validateTextboxs();";
            if (!Page.IsPostBack)
            {
                DataView dv = new DataView();
                dv.Dispose();
                dv = bindgrid();
                grdView.DataSource = null;
                grdView.DataSource = dv;
                grdView.DataBind();
            }
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
        }
    }

    protected void sendMail_Click(object sender, EventArgs e)
    {
        try
        {
            //string uscid = ((System.Web.UI.WebControls.LinkButton)(sender)).CommandArgument;
            //updateData(uscid, "Accepted");
            string mail = ((System.Web.UI.WebControls.Button)(sender)).CommandArgument;
            Session["mail"] = mail.Trim();
            Session["sub"] = "Response to your bike Ad.";
            Response.Redirect("sendMail.aspx",false);
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx",false);
        }
    }

    private DataView bindgrid()
    {
        try
        {
            Regex regex = new Regex("^[0-9.]*$");
            DataSet ds = new DataSet();
            DataView dv = new DataView();
            String StrQuery;
            dv.Dispose();
            SqlConnection ConnString = new SqlConnection(ConfigurationManager.ConnectionStrings["uscresellall"].ToString());
            if (from.Text.Trim() == "" || from.Text.Trim() == null || from.Text.Trim() == string.Empty || to.Text.Trim() == "" || to.Text.Trim() == null || to.Text.Trim() == string.Empty || !(regex.IsMatch(to.Text.Trim())) || !(regex.IsMatch(from.Text.Trim())))
            {
                StrQuery = "select * from bikes order by createdOn desc";
                withResearch.Visible = false;
            }
            else
            {
                StrQuery = "select * from bikes where price between " + from.Text + " and " + to.Text + " order by createdOn desc";
                withResearch.Visible = true;
            }
            SqlDataAdapter sadp = new SqlDataAdapter(StrQuery, ConnString);
            sadp.Fill(ds);
            dv = new DataView(ds.Tables[0]);
            totlReordslbl.Text = Convert.ToString(dv.Count);
            return dv;
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
            return null;
        }
    }


    protected void grdView_PageIndexChanging(Object sender, GridViewPageEventArgs e)
    {
        try
        {
            grdView.PageIndex = e.NewPageIndex;
            grdView.DataSource = bindgrid();
            grdView.DataBind();
        }

        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DataView dv = new DataView();
            dv.Dispose();
            dv = bindgridWithPriceRange();
            grdView.DataSource = null;
            grdView.DataSource = dv;
            grdView.DataBind();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
        }
    }

    private DataView bindgridWithPriceRange()
    {
        return bindgrid();
    }
}