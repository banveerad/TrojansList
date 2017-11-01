<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditorDeleteHousings.aspx.cs"
    Inherits="EditorDeleteFurnitures" %>

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
        .style3
        {
            width: 160px;
        }
    </style>
    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'XXXX']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

</script>
</head>
<body style="font-family: palatino,palatino linotype, Georgia,Times New Roman,Times,serif">
    <form id="form1" runat="server">
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
                                        <a style="text-decoration: underline" href="EditorDelete.aspx"><font color="Red">Edit/Delete</font></a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="85%" valign="top" style="padding-right: 10px; padding-left: 10px">
                            <table width="100%">
                                <tr width="100%">
                                    <td width="100%" align="center" colspan="2">
                                        <h3>
                                            <span style="color: Lime; font-size: 140%">&#9632;</span>&nbsp;Edit or Delete your
                                            advertisement for housing here&nbsp;&nbsp;
                                        </h3>
                                    </td>
                                </tr>
                                <tr style="width: 100%">
                                    <td style="width: 18%">
                                        <label>
                                            Enter your USC email ID <span style="color: Red">*</span>
                                        </label>
                                    </td>
                                    <td>
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
                                <tr style="width: 100%">
                                    <td colspan="2">
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
                                        <table width="100%">
                                            <tr>
                                                <td align="center">
                                                    <asp:Label ID="descLabel3" runat="server" Style="color: Red; font-weight: bold" Text=""></asp:Label><br />
                                                    <asp:Label ID="expectedLabel" runat="server" Style="color: Red; font-weight: bold"
                                                        Text=""></asp:Label>
                                                    <asp:Label ID="success" runat="server" Style="color: Green; font-weight: bold" Text=""></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                        <asp:Label ID="totalrecordIs" runat="server" Text="Total records :" Font-Bold="true"
                                            Visible="false"></asp:Label>&nbsp;<asp:Label ID="totlReordslbl" ForeColor="Blue"
                                                runat="server" Font-Bold="true" Visible="false"></asp:Label>
                                        <br />
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                            DataKeyNames="id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting"
                                            OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AllowPaging="True"
                                            OnPageIndexChanging="grdView_PageIndexChanging" Width="100%" BackColor="White"
                                            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
                                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                            <Columns>
                                                <asp:CommandField HeaderText="Edit-Update" ShowEditButton="True">
                                                    <ControlStyle Width="90%" />
                                                    <FooterStyle Width="15%" />
                                                    <HeaderStyle Width="15%" />
                                                    <ItemStyle HorizontalAlign="Center" Width="15%"></ItemStyle>
                                                </asp:CommandField>
                                                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True">
                                                    <ControlStyle Width="90%" />
                                                    <FooterStyle Width="5%" />
                                                    <HeaderStyle Width="5%" />
                                                    <ItemStyle HorizontalAlign="Center" Width="5%"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Lookingfor" HeaderText="Looking for" ReadOnly="True">
                                                    <ControlStyle Width="10%" />
                                                    <FooterStyle Width="10%" />
                                                    <HeaderStyle Width="10%" />
                                                    <ItemStyle HorizontalAlign="Center" Width="10%"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="descp" HeaderText="Description">
                                                    <ControlStyle Width="90%"></ControlStyle>
                                                    <FooterStyle Width="45%" />
                                                    <HeaderStyle Width="45%" />
                                                    <ItemStyle HorizontalAlign="Center" Width="45%"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="gender" ReadOnly="true" HeaderText="Looking for gender">
                                                    <FooterStyle Width="15%" />
                                                    <HeaderStyle Width="15%" />
                                                    <ItemStyle HorizontalAlign="Center" Width="15%"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:CommandField HeaderText="Delete" ShowDeleteButton="True">
                                                    <ControlStyle Width="90%" />
                                                    <FooterStyle Width="10%" />
                                                    <HeaderStyle Width="10%" />
                                                    <ItemStyle HorizontalAlign="Center" Width="10%"></ItemStyle>
                                                </asp:CommandField>
                                            </Columns>
                                            <RowStyle BackColor="White" ForeColor="#330099" />
                                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                                        </asp:GridView>
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
