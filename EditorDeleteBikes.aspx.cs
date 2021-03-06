﻿using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Web.UI.WebControls;

public partial class EditorDeleteBikes : System.Web.UI.Page
{
    Class1 myclass = new Class1();
    String codestr;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            sendCode.Attributes["onclick"] = "return validdateEmail();";
            if (!IsPostBack)
            {
                //BindData();
            }
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
        }
    }

    private void BindData()
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["uscresellall"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("SELECT id,descp,price FROM bikes where mail='" + mailTxtBox.Text + "' order by createdOn desc", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            totlReordslbl.Text = Convert.ToString(dt.Rows.Count);
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
        }
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {
            descLabel3.Text = string.Empty;
            expectedLabel.Text = string.Empty;
            success.Text = string.Empty;
            GridView1.EditIndex = e.NewEditIndex;
            BindData();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
        }
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        try
        {
            descLabel3.Text = string.Empty;
            expectedLabel.Text = string.Empty;
            success.Text = string.Empty;
            GridView1.EditIndex = -1;
            BindData();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
        }
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            descLabel3.Text = string.Empty;
            expectedLabel.Text = string.Empty;
            success.Text = string.Empty;
            if (((LinkButton)GridView1.Rows[0].Cells[0].Controls[0]).Text == "Insert")
            {

            }
            else
            {
                if (serverSideValidation(((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text.Trim(), ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text.Trim()))
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["uscresellall"].ConnectionString);
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "UPDATE bikes SET descp=@cat_name,price=@price ,createdOn='" + DateTime.Now + "' WHERE id=@cat_id";
                    cmd.Parameters.Add("@cat_name", SqlDbType.VarChar).Value = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text.Trim();
                    cmd.Parameters.Add("@cat_id", SqlDbType.Int).Value = Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[1].Text.Trim());
                    cmd.Parameters.Add("@price", SqlDbType.Float).Value = Convert.ToDouble(((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text.Trim());
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    success.Text = "Updated successfully";
                    GridView1.EditIndex = -1;
                }

            }



            BindData();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            descLabel3.Text = string.Empty;
            expectedLabel.Text = string.Empty;
            success.Text = string.Empty;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["uscresellall"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "DELETE FROM bikes WHERE id=@cat_id";
            cmd.Parameters.Add("@cat_id", SqlDbType.Int).Value = Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[1].Text);

            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            BindData();
            success.Text = "Deleted successfully";
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
        }

    }

    protected void grdView_PageIndexChanging(Object sender, GridViewPageEventArgs e)
    {
        try
        {
            descLabel3.Text = string.Empty;
            expectedLabel.Text = string.Empty;
            success.Text = string.Empty;
            GridView1.PageIndex = e.NewPageIndex;
            BindData();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
        }
    }

    private bool serverSideValidation(string descrip, string expectedPrice)
    {
        try
        {
            int isprob = 0;
            success.Text = string.Empty;
            Regex regexname = new Regex("^[a-zA-Z0-9-,][a-zA-Z0-9-,\\s]+$");
            //outputlable.Text = op;

            if (descrip == null || descrip == string.Empty || descrip == " " || !(regexname.IsMatch(descrip)))
            {
                descLabel3.Text = "Please enter a valid description.Field cannot include any special characters except , and -";
                isprob = 1;
            }
            else
            {
                if (descrip.Length > 140)
                {
                    descLabel3.Text = "Description length can't be more than 140 characters";
                    isprob = 1;
                }
                else
                {
                    descLabel3.Text = string.Empty;
                }
            }


            Regex regex = new Regex("^[0-9]+(.[0-9]{0,20})?$");
            if (expectedPrice.Length == 0 || expectedPrice.Length > 10 || !(regex.IsMatch(expectedPrice)))
            {
                expectedLabel.Text = "Please enter only numbers for price.Max length allowed is 10 digits";
                isprob = 1;
            }
            else
            {
                expectedLabel.Text = string.Empty;
            }

            try
            {
                Decimal.Parse(expectedPrice);
            }
            catch (Exception e)
            {
                expectedLabel.Text = "Please enter only numbers for price.Max length allowed is 10 digits";
                isprob = 1;
            }

            if (isprob == 1)
                return false;
            else
                return
                    true;
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
            return false;
        }
    }
    protected void sendCode_Click(object sender, EventArgs e)
    {
        try
        {
            if (serverSideValidationmail())
            {
                DateTime today = DateTime.Today;
                DateTime fromDatabase;
                SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["uscresellall"].ToString());
                SqlDataReader reader1 = null;
                SqlCommand INcommand1 = new SqlCommand("select createdOn from userEmails where emailId='" + mailTxtBox.Text + "'");
                INcommand1.Connection = conn1;
                conn1.Open();
                reader1 = INcommand1.ExecuteReader();
                if (reader1.HasRows)
                {
                    reader1.Read();
                    reader1.GetValue(0).ToString();
                    conn1.Close();
                    reader1.Dispose();
                    INcommand1.Dispose();
                    fromDatabase = getTheCodeTimestamp();
                    if (fromDatabase.Date.ToString("D") != today.Date.ToString("D"))
                    {
                        codestr = myclass.GetRandomPassword(10);
                        INcommand1 = new SqlCommand("update userEmails set createdOn = '" + DateTime.Now + "',codestring='" + codestr + "' where emailId='" + mailTxtBox.Text + "'");
                        INcommand1.Connection = conn1;
                        conn1.Open();
                        reader1 = INcommand1.ExecuteReader();
                        //codeSent.Value = codestr;
                        //send an email containing the code.
                        string veriBod = "Dear User,";//nAre you trying to subscribe or unsubscribe to a CS email list using online system? ";
                        veriBod += "\nPlease use the below one-time verification code which is valid for today to proceed with your online request.\n\n" + codestr + "\n\nIf not, please ignore this automatic email.\n\n";
                        veriBod += "Thank you,";
                        myclass.SendEmail(mailTxtBox.Text, "Verification Code sent to you by www.trojanslist.com", veriBod);
                        pop1ErrMsg.Text = string.Empty;
                        TxtCode.Text = string.Empty;
                        MyMPE.Show();
                        conn1.Close();

                    }
                    else
                    {
                        pop1ErrMsg.Text = string.Empty;
                        TxtCode.Text = string.Empty;
                        MyMPE.Show();
                    }
                }

                else
                {
                    codestr = myclass.GetRandomPassword(10);

                    SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["uscresellall"].ToString());
                    SqlDataReader reader2 = null;
                    SqlCommand INcommand2 = new SqlCommand();
                    INcommand2.Connection = conn2;
                    INcommand2.CommandType = CommandType.Text;


                    INcommand2.CommandText = "insert into userEmails (emailId,codestring,createdOn) values(@emailId,@codestring,@createdOn)";
                    INcommand2.Parameters.AddWithValue("@emailId", mailTxtBox.Text);
                    INcommand2.Parameters.AddWithValue("@codestring", codestr);
                    INcommand2.Parameters.AddWithValue("@createdOn", DateTime.Now);
                    // INcommand1.Parameters.AddWithValue("@reqCanTS", "");
                    conn2.Open();
                    reader2 = INcommand2.ExecuteReader();
                    conn2.Close();
                    //codeSent.Value = codestr;
                    //send an email containing the code.
                    string veriBod = "Dear User,";//nAre you trying to subscribe or unsubscribe to a CS email list using online system? ";
                    veriBod += "\nPlease use the below one-time verification code which is valid for today to proceed with your online request.\n\n" + codestr + "\n\nIf not, please ignore this automatic email.\n\n";
                    veriBod += "Thank you,";
                    myclass.SendEmail(mailTxtBox.Text, "Verification Code sent to you by www.trojanslist.com", veriBod);
                    pop1ErrMsg.Text = string.Empty;
                    TxtCode.Text = string.Empty;
                    MyMPE.Show();

                }
            }
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
        }
    }

    private bool serverSideValidationmail()
    {
        try
        {
            int isprob = 0;
            string uscmails = mailTxtBox.Text.Trim();

            if (uscmails == null || uscmails == string.Empty || uscmails == " ")
            {
                mailErrorLabel.Text = "Please enter a valid USC email address.";
                isprob = 1;
            }
            else
            {
                mailErrorLabel.Text = string.Empty;
            }

            string substrmail = string.Empty;
            if (uscmails.Length != 0)
            {
                int sti = uscmails.IndexOf('@');
                if (sti != -1)
                {
                    substrmail = uscmails.Substring(sti, uscmails.Length - sti);
                    substrmail.ToLower();
                }
            }
            string strRegex = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}" + @"\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\" + @".)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";
            Regex re = new Regex(strRegex);
            if (!re.IsMatch(uscmails))
            {
                mailErrorLabel.Text = "Please enter a valid USC email address.";
                isprob = 1;
            }
            else if (substrmail.ToLower() != "@usc.edu")
            {
                mailErrorLabel.Text = "Please enter a valid USC email address.";
                isprob = 1;
            }
            else
            {
                mailErrorLabel.Text = string.Empty;
            }
            if (isprob == 1)
                return false;
            else
                return
                    true;
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
            return false;
        }
    }

    private DateTime getTheCodeTimestamp()
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["uscresellall"].ToString());

            SqlDataReader reader = null;
            SqlCommand command = command = new SqlCommand("select createdOn from userEmails where emailId='" + mailTxtBox.Text + "'");
            command.Connection = conn;
            conn.Open();
            reader = command.ExecuteReader();
            reader.Read();
            return Convert.ToDateTime(reader.GetValue(0));
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
            return DateTime.Now;
        }
    }
    protected void BTN_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["uscresellall"].ToString());

            SqlDataReader reader = null;
            SqlCommand command = command = new SqlCommand("select codestring from userEmails where emailId='" + mailTxtBox.Text + "'");
            command.Connection = conn2;
            conn2.Open();
            reader = command.ExecuteReader();
            reader.Read();
            string codeSent = Convert.ToString(reader.GetValue(0));
            conn2.Close();
            if (codeSent == TxtCode.Text)
            {
                BindData();
                GridView1.Visible = true;
                totalrecordIs.Visible = true;
                totlReordslbl.Visible = true;
                mailTxtBox.Enabled = false;
                sendCode.Style.Add("display", "none");
            }
            else
            {
                // codeError.InnerHtml = "Incorrect Code!Please Enter the code again.<br />Note: The code needs to be the latest one";
                pop1ErrMsg.Text = "Incorrect Code! Please try again.";
                TxtCode.Text = "";
                MyMPE.Show();
                return;
            }
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
        }
    }
}