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
            Session["sub"] = "Response to your housing Ad!!!";
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
            //if (productTxtBox.Text.Trim() == "" || productTxtBox.Text.Trim() == null || productTxtBox.Text.Trim() == string.Empty || expectedTextBox.Text.Trim() == "" || expectedTextBox.Text.Trim() == null || expectedTextBox.Text.Trim() == string.Empty)
            //{
            //    StrQuery = "select * from housing order by createdOn desc";
            //}
            //else
            //{
            //    if (productTxtBox.Text.Trim() == "" || productTxtBox.Text.Trim() == null || productTxtBox.Text.Trim() == string.Empty)
            //    {
            //        StrQuery = "select * from housing where Lookingfor like '%" + productTxtBox.Text + "%' order by createdOn desc";
            //    }
            //    else if (expectedTextBox.Text.Trim() == "" || expectedTextBox.Text.Trim() == null || expectedTextBox.Text.Trim() == string.Empty)
            //    {
            //        StrQuery = "select * from housing where gender like '%" + expectedTextBox.Text + "%' order by createdOn desc";
            //    }
            //    else
            //    {
            //        StrQuery = "select * from housing where Lookingfor like '%" + productTxtBox.Text + "%' and gender like '%" + expectedTextBox.Text + "%'  order by createdOn desc";
            //    }

            //}
            string gender;
            int gen = 0;
            int lookfor = 0;
            if (expectedTextBox.Text == "null")
            {
                gender = "ISNULL(" + expectedTextBox.Text + ", gender)";
            }
            else
            {
                gender = "ISNULL('" + expectedTextBox.Text + "', gender)";
                gen = 1;
            }
            string looking;
            if (productTxtBox.Text == "null")
            {
                looking = "ISNULL(" + productTxtBox.Text + ", Lookingfor)";
            }
            else
            {
                looking = "ISNULL('" + productTxtBox.Text + "', Lookingfor)";
                lookfor = 1;
            }
            if (gen == 1 || lookfor == 1)
            {
                withResearch.Visible = true;
            }
            else
            {
                withResearch.Visible = false;
            }
            StrQuery = "SELECT * FROM housing WHERE gender = " + gender + " and Lookingfor =" + looking +"order by createdOn desc";
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
        //if (productTxtBox.Text.Trim() == "" || productTxtBox.Text.Trim() == null || productTxtBox.Text.Trim() == string.Empty)
        //{
        return bindgrid();
        //}
        //else
        //{
        //    SqlConnection ConnString = new SqlConnection(ConfigurationManager.ConnectionStrings["uscresellall"].ToString());
        //    String StrQuery = "select * from furniture where product like '%" + productTxtBox.Text + "%' order by createdOn desc";
        //    SqlDataAdapter sadp = new SqlDataAdapter(StrQuery, ConnString);
        //    sadp.Fill(ds);
        //    dv = new DataView(ds.Tables[0]);
        //    return dv;
        //}
    }
}