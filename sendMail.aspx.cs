using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class sendMail : System.Web.UI.Page
{
    Class1 myclass = new Class1();
    String codestr;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            sendCode.Attributes["onclick"] = "return validdateEmail();";
            subline.Text = (string)Session["sub"];
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx", false);
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
                MailBody.Visible = true;
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
            Response.Redirect("ErrorPage.aspx", false);
        }

    }
    protected void sendCode_Click(object sender, EventArgs e)
    {
        try
        {

            if (serverSideValidation())
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
            Response.Redirect("ErrorPage.aspx", false);
        }

    }

    private bool serverSideValidation()
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
            Response.Redirect("ErrorPage.aspx", false);
            return false;
        }
    }
    protected void SendMailButton_Click(object sender, EventArgs e)
    {
        try
        {
            string veriBod = messageTextBox.Text;
            string sub = (string)Session["sub"];
            string sendTo = (string)Session["mail"];
            string from = mailTxtBox.Text;
            myclass.SendEmail(sendTo, sub, veriBod, from);
            finalMsg.Text = "Message sent successfully !! ";
            MailBody.Visible = false;
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx", false);
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
            Response.Redirect("ErrorPage.aspx", false);
            return DateTime.Now;
        }
    }
}