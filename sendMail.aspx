<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sendMail.aspx.cs" Inherits="sendMail" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script src="Scripts/validatenew.js" type="text/javascript"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style type="text/css">
        .myclass
        {
            text-decoration: none;
        }
        .myclass:hover
        {
            text-decoration: underline;
        }
        .style1
        {
            width: 90%;
        }
        .style2
        {
            width: 17%;
        }
        .modalBackground
        {
            background-color: #CCCCFF;
            filter: alpha(opacity=40);
            opacity: 0.5;
        }
        .ModalWindow
        {
            border: solid1px#c0c0c0;
            background: #f0f0f0;
            padding: 0px10px10px10px;
            position: absolute;
            top: -1000px;
        }
    </style>
    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA--1']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

</script>
</head>
<body style="font-family: palatino,palatino linotype, Georgia,Times New Roman,Times,serif">
    <form id="form1" runat="server" enabled="false">
    <table width="100%" style="border-collapse: collapse">
        <tr width="100%" height="120px" bgcolor="#990000">
            <td width="100%" style="border-bottom-style: solid; border-width: 1px; border-color: black">
                <table width="100%">
                    <tr width="100%">
                        <td width="100%" style="padding-left: 25px; color: white">
                            <a href="Default.aspx" style="text-decoration: none; font-size: 35px; font-family: palatino,palatino linotype, Georgia,Times New Roman,Times,serif;
                                color: #FFCC00">Trojans List<sub style="font-size: 14px">Beta</sub></a>
                        </td>
                    </tr>
                    <tr>
                        <td width="100%" style="padding-left: 100px; color: white; font-size: 12px">
                            <label>
                                For Trojans by Trojans</label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr width="100%" height="390px">
            <td width="100%" valign="top" style="border-bottom-style: solid; border-width: 1px;
                border-right-style: solid; border-left-style: solid">
                <table width="100%">
                    <tr width="100%" height="390px">
                        <td style="border-right-style: solid; border-width: 1px" valign="top" class="style3">
                            <table width="100%">
                                <tr>
                                    <td style="border-bottom-style: solid; border-width: 1px; font-weight: bold; color: Gray;
                                        width: 100%; font-size: 15px">
                                        General
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-bottom-style: solid; border-width: 1px; font-weight: bold; padding-left: 10px;
                                        font-size: 15px">
                                        <a class="myclass" href="Default.aspx"><font color="black">Home</font></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-bottom-style: solid; border-width: 1px; font-weight: bold; color: Gray;
                                        width: 100%; font-size: 15px">
                                        Create Ads
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-bottom-style: solid; border-width: 1px; font-weight: bold; padding-left: 10px;
                                        font-size: 15px">
                                        <a class="myclass" href="Bykes.aspx"><font color="black">Bikes</font></a>
                                        <br />
                                        <a class="myclass" href="Furnitures.aspx"><font color="black">Furniture</font></a>
                                        <br />
                                        <a class="myclass" href="Gadgets.aspx"><font color="black">Gadgets</font></a>
                                        <br />
                                        <a class="myclass" href="Housing.aspx"><font color="black">Housing</font></a>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-bottom-style: solid; border-width: 1px; font-weight: bold; color: Gray;
                                        width: 100%; font-size: 15px">
                                        View Ads
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-bottom-style: solid; border-width: 1px; font-weight: bold; padding-left: 10px;
                                        font-size: 15px">
                                        <a class="myclass" href="BikesList.aspx"><font color="black">Bikes List</font></a>
                                        <br />
                                        <a class="myclass" href="FurnitureList.aspx"><font color="black">Furniture List</font></a>
                                        <br />
                                        <a class="myclass" href="GadgetList.aspx"><font color="black">Gadgets List</font></a>
                                        <br />
                                        <a class="myclass" href="HousingList.aspx"><font color="black">Housing List</font></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-bottom-style: solid; border-width: 1px; font-weight: bold; padding-left: 10px;
                                        font-size: 15px">
                                        &nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold; text-align: center; font-size: 15px">
                                        <a class="myclass" href="EditorDelete.aspx"><font color="Red">Edit/Delete</font></a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="85%" valign="top" style="padding-right: 10px; padding-left: 10px">
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <a href="#" style="display: none; visibility: hidden;" onclick="return false" id="dummyLink"
                                runat="server">dummy</a>
                            <asp:ModalPopupExtender ID="MyMPE" runat="server" TargetControlID="dummyLink" PopupControlID="PanelCode"
                                BehaviorID="MyMPE" BackgroundCssClass="modalBackground" CancelControlID="popCancel"
                                OnCancelScript="onCancelclick()">
                            </asp:ModalPopupExtender>
                            <asp:Panel ID="PanelCode" runat="server" Heigt="300px" Width="300px" Style="background-color: #FFCC00;
                                filter: alpha(opacity=80); opacity: 0.8; -webkit-border-radius: 20px; -moz-border-radius: 20px"
                                Height="215px" BorderColor="Black" BorderWidth="2px">
                                <center>
                                    <br />
                                    <asp:Label ID="veriText" Text="A one time verification code which is valid for today has been sent to you via email"
                                        runat="server" Style="vertical-align: middle; color: Blue; font-weight: bold;
                                        margin-left: 5px; margin-top: 40Px"></asp:Label>
                                    <br />
                                    <asp:Label ID="LblEnterCode" runat="server" Style="vertical-align: middle; color: Blue;
                                        font-weight: bold; margin-left: 20px; margin-top: 40Px" Text="Please enter that code to proceed"></asp:Label>
                                    <br />
                                    <asp:Label ID="pop1ErrMsg" runat="server" Style="vertical-align: middle; color: #990000;
                                        font-weight: bold; margin-left: 20px; margin-top: 40Px"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TxtCode" runat="server" CssClass="textbox1" Style="vertical-align: middle;"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Button ID="BTN" runat="server" OnClick="BTN_Click" Text="OK" Enabled="false" />&nbsp;&nbsp<asp:Button
                                        ID="popCancel" runat="server" Text="Cancel" Enabled="false" />
                                    <span id="Span1" runat="server" class="error"></span>
                                    <br />
                                    <br />
                                </center>
                            </asp:Panel>
                            <table style="width: 100%" runat="server" id="takeEmail">
                                <tr>
                                    <td colspan="2">
                                        <h2>
                                            <asp:Label ID="subline" runat="server"></asp:Label></h2>
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td class="style2">
                                        <label>
                                            Enter your USC email ID <span style="color: Red">*</span>
                                        </label>
                                    </td>
                                    <td class="style1">
                                        <asp:TextBox runat="server" ID="mailTxtBox" MaxLength="50" ForeColor="Blue"></asp:TextBox>&nbsp;&nbsp;<asp:Label
                                            ID="mailErrorLabel" runat="server" Style="color: Red" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td colspan="2">
                                        <asp:Button ID="sendCode" runat="server" Text="Proceed" OnClick="sendCode_Click"
                                            Enabled="false" />
                                    </td>
                                </tr>
                            </table>
                            <table runat="server" style="width: 100%" id="MailBody" visible="false">
                                <tr style="width: 100%">
                                    <td class="style2">
                                        <label>
                                            Enter your message <span style="color: Red">*</span>
                                        </label>
                                    </td>
                                    <td class="style1">
                                        <asp:TextBox TextMode="MultiLine" runat="server" ID="messageTextBox" MaxLength="10"
                                            Height="76px" onkeyup="return ismaxlength(this,140)" Width="269px" ForeColor="Blue"></asp:TextBox><label
                                                id="lblCaption"></label>&nbsp;&nbsp;<asp:Label ID="messageErrorLabel1" runat="server"
                                                    Style="color: Red" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td colspan="2">
                                        <br />
                                        <asp:Button ID="SendMailButton" runat="server" Text="SendMail" OnClick="SendMailButton_Click" />
                                    </td>
                                </tr>
                            </table>
                            <input type="hidden" runat="server" id="codeSent" />
                            <table width="100%">
                                <tr>
                                    <td align="center">
                                        <asp:Label ID="finalMsg" runat="server" Text="" ForeColor="Green"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table width="100%" style="font-size: small">
        <tr>
            <td style="width: 30%" align="center">
                <span style="color: #990000; font-size: 140%">&#9632;</span>&nbsp;Contact us : contact@trojanslist.com
                &nbsp; | &nbsp; <span style="color: #990000; font-size: 140%">&#9632;</span>&nbsp;<a
                    href="TNC.aspx" class="myclass">Terms and conditions</a>
            </td>
        </tr>
        <tr>
            <td align="center" style="font-size: smaller">
                <p>
                    Copyrights © 2011. All Rights Reserved.
                </p>
            </td>
        </tr>
    </table>
    </form>
</body>
<script type="text/javascript" id="EnableBtn" language="javascript">
    //window.history.forward(1);
    document.forms[0].sendCode.disabled = false;
    document.forms[0].BTN.disabled = false;
    document.forms[0].popCancel.disabled = false;
</script>
</html>
