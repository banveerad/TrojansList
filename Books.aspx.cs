using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class Bykes : System.Web.UI.Page
{
    int captchaResult;
    Class1 myclass = new Class1();
    String codestr;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            buttonSubmit.Attributes["onclick"] = "return ValidateForm();";
            if (IsPostBack == false)
            {
                generateMathCaptcha();      //generate math captcha on pageload
            }
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        try
        {

            if (serverSideValidation())
            {
                DateTime today = DateTime.Today;
                DateTime fromDatabase;
                SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["uscresellall"].ToString());
                SqlDataReader reader1 = null;
                SqlCommand INcommand1 = new SqlCommand("select createdOn from userEmails where emailId='" + uscEmsilTextBox.Text.Trim() + "'");
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
                        INcommand1 = new SqlCommand("update userEmails set createdOn = '" + DateTime.Now + "',codestring='" + codestr + "' where emailId='" + uscEmsilTextBox.Text.Trim() + "'");
                        INcommand1.Connection = conn1;
                        conn1.Open();
                        reader1 = INcommand1.ExecuteReader();
                        //codeSent.Value = codestr;
                        //send an email containing the code.
                        string veriBod = "Dear " + fullNameTxtBox.Text.Trim(); //+ ",\nAre you trying to create an advertisement in www.uyesc.us? ";
                        veriBod += "\nPlease use the below one-time verification code which is valid for today to proceed with your online request.\n\n" + codestr + "\n\nIf not, please ignore this automatic email.\n\n";
                        veriBod += "Thank you,\n.";
                        myclass.SendEmail(uscEmsilTextBox.Text.Trim(), "Verification Code sent to you by www.trojanslist.com", veriBod);
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
                    INcommand2.Parameters.AddWithValue("@emailId", uscEmsilTextBox.Text.Trim());
                    INcommand2.Parameters.AddWithValue("@codestring", codestr);
                    INcommand2.Parameters.AddWithValue("@createdOn", DateTime.Now);
                    // INcommand1.Parameters.AddWithValue("@reqCanTS", "");
                    conn2.Open();
                    reader2 = INcommand2.ExecuteReader();
                    conn2.Close();
                    //codeSent.Value = codestr;
                    //send an email containing the code.
                    string veriBod = "Dear " + fullNameTxtBox.Text.Trim();// +",\nAre you trying to subscribe or unsubscribe to a CS email list using online system? ";
                    veriBod += "\nPlease use the below one-time verification code which is valid for today to proceed with your online request.\n\n" + codestr + "\n\nIf not, please ignore this automatic email.\n\n";
                    veriBod += "Thank you,";
                    myclass.SendEmail(uscEmsilTextBox.Text.Trim(), "Verification Code sent to you by www.trojanslist.com", veriBod);
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

    protected void generateMathCaptcha()
    {
        try
        {
            //generate MATH Captcha
            Random randomclass = new Random();
            String Op = "";

            int operand1 = randomclass.Next(0, 10);
            int operand2 = randomclass.Next(0, 10);
            int operator1 = randomclass.Next(0, 2);
            if (operator1 == 0)
            {
                Op = "+";
                captchaResult = operand1 + operand2;
            }
            else if (operator1 == 1)
            {
                Op = "X";
                captchaResult = operand1 * operand2;
            }
            //show the captcha 
            captcha.Text = operand1.ToString() + " " + Op + " " + operand2.ToString();
            result4JS.Value = captchaResult.ToString();
            return;
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
        }
    }
    protected void BTN_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["uscresellall"].ToString());

            SqlDataReader reader = null;
            SqlCommand command = command = new SqlCommand("select codestring from userEmails where emailId='" + uscEmsilTextBox.Text.Trim() + "'");
            command.Connection = conn2;
            conn2.Open();
            reader = command.ExecuteReader();
            reader.Read();
            string codeSent = Convert.ToString(reader.GetValue(0));
            conn2.Close();
            if (codeSent == TxtCode.Text.Trim())
            {
                pop1ErrMsg.Text = string.Empty;
                //insert into RequestInfo
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["uscresellall"].ToString());
                SqlDataReader reader2 = null;
                SqlCommand INcommand1 = new SqlCommand();
                INcommand1.Connection = conn;
                INcommand1.CommandType = CommandType.Text;


                INcommand1.CommandText = "insert into bikes (name,mail,phonenumer,descp,price,createdOn) values(@name,@email,@phoneno,@descp,@price,@createdOn)";
                INcommand1.Parameters.AddWithValue("@name", fullNameTxtBox.Text.Trim());
                INcommand1.Parameters.AddWithValue("@email", uscEmsilTextBox.Text.Trim());
                INcommand1.Parameters.AddWithValue("@phoneno", phoneNumberTextBox.Text.Trim());
               // INcommand1.Parameters.AddWithValue("@descp", descriptionTextBox.Text.Trim());
                INcommand1.Parameters.AddWithValue("@price", expectedTextBox.Text.Trim());
                INcommand1.Parameters.AddWithValue("@createdOn", DateTime.Now);
                // INcommand1.Parameters.AddWithValue("@reqCanTS", "");
                conn.Open();
                reader2 = INcommand1.ExecuteReader();
                conn.Close();
                mainLabel.Text = "Your records are successfully saved !!!";
                fullNameTxtBox.Text = string.Empty;
                uscEmsilTextBox.Text = string.Empty;
                phoneNumberTextBox.Text = string.Empty;
                //descriptionTextBox.Text = string.Empty;
                expectedTextBox.Text = string.Empty;
                MathCaptchaResult.Text = string.Empty;
                tncchkbx.Checked = false;
                generateMathCaptcha();
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

    protected void b1_Click(object sender, EventArgs e)
    {
        try
        {
            //generate code
            codestr = myclass.GetRandomPassword(10);
            //codeSent.Value = codestr;
            //send an email containing the code.
            string veriBod = "Dear " + fullNameTxtBox.Text.Trim();// +",\nAre you trying to subscribe or unsubscribe to a CS email list using online system? ";
            veriBod += "\nPlease use the below one-time verification code which is valid for today to proceed with your online request.\n\n" + codestr + "\n\nIf not, please ignore this automatic email.\n\n";
            veriBod += "Thank you,\nCS Dept.";
            myclass.SendEmail(uscEmsilTextBox.Text.Trim(), "Verification Code sent to you by www.trojanslist.com", veriBod);
            pop1ErrMsg.Text = string.Empty;
            TxtCode.Text = string.Empty;
            MyMPE.Show();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx");
        }

    }

    private DateTime getTheCodeTimestamp()
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["uscresellall"].ToString());

            SqlDataReader reader = null;
            SqlCommand command = command = new SqlCommand("select createdOn from userEmails where emailId='" + uscEmsilTextBox.Text.Trim() + "'");
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

    private bool serverSideValidation()
    {
        try
        {

            string name = fullNameTxtBox.Text.Trim();
            string uscmails = uscEmsilTextBox.Text.Trim();
            //string descrip = descriptionTextBox.Text.Trim();
            string expectedPrice = expectedTextBox.Text.Trim();
            string captchaResult = MathCaptchaResult.Text.Trim();
            string phoneNumber = phoneNumberTextBox.Text.Trim();
            int isprob = 0;
            int nameempty = 0;

            Regex regexname = new Regex("^[a-zA-Z0-9-,][a-zA-Z0-9-,\\s]+$");
            //outputlable.Text = op;
            if (name == null || name == string.Empty || name == " " || !(regexname.IsMatch(name)))
            {
                nameLabel.Text = "Enter valid name.";
                isprob = 1;
                nameempty = 1;
            }
            else
            {
                nameLabel.Text = string.Empty;
            }

            if (nameempty == 0)
            {
                if (name.Length > 50 && isprob != 1)
                {
                    nameLabel.Text = "Please truncate the name to first 50 characters. This field does not allow more than 50 characters.";
                    isprob = 1;
                }
                else
                {
                    nameLabel.Text = string.Empty;
                }
            }

            //if (descrip == null || descrip == string.Empty || descrip == " " || !(regexname.IsMatch(descrip)))
            //{
            //    //descLabel3.Text = "Enter valid Description .";
            //    isprob = 1;
            //}
            //else
            //{
            //    if (descrip.Length > 140)
            //    {
            //        //descLabel3.Text = "Enter valid Description .";
            //        isprob = 1;
            //    }
            //    else
            //    {
            //       // descLabel3.Text = string.Empty;
            //    }
            //}

            if (uscmails == null || uscmails == string.Empty || uscmails == " ")
            {
                emailLabel.Text = "Please enter a valid USC email address.";
                isprob = 1;
            }
            else
            {
                emailLabel.Text = string.Empty;
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
                emailLabel.Text = "Please enter a valid USC email address.";
                isprob = 1;
            }
            else if (substrmail.ToLower() != "@usc.edu")
            {
                emailLabel.Text = "Please enter a valid USC email address.";
                isprob = 1;
            }
            else
            {
                emailLabel.Text = string.Empty;
            }



            Regex regex = new Regex("^[0-9.]*$");
            if (expectedPrice.Length == 0 || expectedPrice.Length > 10 || !(regex.IsMatch(expectedPrice)))
            {
                expectedLabel.Text = "Please enter a valid Price.";
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
                expectedLabel.Text = "Please enter a valid Price.";
                isprob = 1;
            }

            if (result4JS.Value != MathCaptchaResult.Text)
            {
                mathresult.Text = "Incorrect result! ";
                isprob = 1;
            }
            else
            {
                mathresult.Text = "";
            }

            if (!tncchkbx.Checked)
            {
                tncErrorLbl.Text = "Please agree to terms and conditions";
                isprob = 1;
            }
            else
            {
                tncErrorLbl.Text = "";
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
}