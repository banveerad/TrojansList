using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FurnitureList : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    DataView dv = new DataView();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!Page.IsPostBack)
            {
                dv = bindgrid();
                grdView.DataSource = dv;
                grdView.DataBind();
            }
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx", false);
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
            Session["sub"] = "Response to your furniture Ad.";
            Response.Redirect("sendMail.aspx", false);
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx", false);
        }
    }

    private DataView bindgrid()
    {
        try
        {
            SqlConnection ConnString = new SqlConnection(ConfigurationManager.ConnectionStrings["uscresellall"].ToString());
            String StrQuery;
            if (productTxtBox.Text.Trim() == "" || productTxtBox.Text.Trim() == null || productTxtBox.Text.Trim() == string.Empty)
            {
                StrQuery = "select * from furniture order by createdOn desc";
                withResearch.Visible = false;
            }
            else
            {
                StrQuery = "select * from furniture where product like '%" + productTxtBox.Text + "%' order by createdOn desc";
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
            Response.Redirect("ErrorPage.aspx", false);
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
            Response.Redirect("ErrorPage.aspx", false);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            dv = bindgridWithPriceRange();
            grdView.DataSource = dv;
            grdView.DataBind();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx", false);
        }
    }

    private DataView bindgridWithPriceRange()
    {
        return bindgrid();
    }
}