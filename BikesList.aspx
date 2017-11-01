<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BikesList.aspx.cs" Inherits="BikesList" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script type="text/javascript">
    function validateTextboxs() {
        if (isNaN(document.getElementById("from").value) || isNaN(document.getElementById("to").value)) {
            document.getElementById("rangeeror").innerHTML = "Please enter only numbers";
            return false;
        }
        if (parseInt(document.getElementById("from").value) > parseInt(document.getElementById("to").value)) {
            document.getElementById("rangeeror").innerHTML = "Value is in the first field should be smaller than the second field ";
            return false;
        }
        return true;
    }
    function enableForm() {
        document.getElementById("form1").disabled = false;
    }

    window.onload = enableForm;
</script>
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
            width: 14%;
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
                                        <a class="myclass" href="Furnitures.aspx"><font color="black">Furnitures</font></a>
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
                                        <a style="text-decoration: underline" href="BikesList.aspx"><font color="black">Bikes
                                            List</font></a>
                                        <br />
                                        <a class="myclass" href="FurnitureList.aspx"><font color="black">Furnitures List</font></a>
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
                            <table width="100%">
                                <tr style="vertical-align: middle">
                                    <td>
                                        <h2>
                                            <span style="color: Lime; font-size: 140%">&#9632;</span>Bike advertisements list
                                            :</h2>
                                    </td>
                                </tr>
                                <tr width="100%">
                                    <td width="100%">
                                        <table width="100%">
                                            <tr>
                                                <td colspan="2">
                                                    Price range :
                                                    <asp:TextBox ID="from" runat="server" ForeColor="Blue"></asp:TextBox>&nbsp; to &nbsp;
                                                    <asp:TextBox ID="to" runat="server" ForeColor="Blue"></asp:TextBox>
                                                    &nbsp;&nbsp;
                                                    <asp:Button ID="Button1" runat="server" Text="Search" Enabled="false" OnClick="Button1_Click" />&nbsp&nbsp;<a
                                                        href="BikesList.aspx" style="font-size: smaller">Clear search</a>&nbsp;<asp:Label
                                                            ID="rangeeror" ForeColor="Red" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                        <asp:Label ID="totalrecordIs" runat="server" Text="Total records :" Font-Bold="true"></asp:Label>&nbsp;<asp:Label
                                            ID="totlReordslbl" ForeColor="Blue" runat="server" Font-Bold="true"></asp:Label>
                                        &nbsp;&nbsp;
                                        <asp:Label ID="withResearch" runat="server" Style="color: #00CC00; font-weight: bold"
                                            Text="With search"></asp:Label>
                                        <br />
                                        <asp:GridView AllowPaging="True" AllowSorting="True" ID="grdView" runat="server"
                                            AutoGenerateColumns="False" Width="100%" PageSize="10" OnPageIndexChanging="grdView_PageIndexChanging"
                                            CellPadding="4" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Description" ItemStyle-Width="60%" HeaderStyle-Wrap="true"
                                                    ItemStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblFirstName" Text='<%# DataBinder.Eval(Container.DataItem, "descp")%>'
                                                            runat="server" />
                                                    </ItemTemplate>
                                                    <HeaderStyle Wrap="True"></HeaderStyle>
                                                    <ItemStyle HorizontalAlign="Center" Width="60%"></ItemStyle>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Price $" ItemStyle-Width="10%" HeaderStyle-Wrap="true"
                                                    ItemStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblCity" Text='<%# DataBinder.Eval(Container.DataItem, "price") %>'
                                                            runat="server"></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle Wrap="True"></HeaderStyle>
                                                    <ItemStyle HorizontalAlign="Center" Width="10%"></ItemStyle>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Created On" ItemStyle-Width="20%" HeaderStyle-Wrap="true"
                                                    ItemStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <%# DataBinder.Eval(Container.DataItem, "createdOn") %>
                                                    </ItemTemplate>
                                                    <HeaderStyle Wrap="True"></HeaderStyle>
                                                    <ItemStyle HorizontalAlign="Center" Width="20%"></ItemStyle>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Contact seller" ItemStyle-Width="10%" HeaderStyle-Wrap="true"
                                                    ItemStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <asp:Button ID="sendMail" runat="server" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "mail") %>'
                                                            OnClick="sendMail_Click" Text="Send Email" />
                                                    </ItemTemplate>
                                                    <HeaderStyle Wrap="True"></HeaderStyle>
                                                    <ItemStyle HorizontalAlign="Center" Width="10%"></ItemStyle>
                                                </asp:TemplateField>
                                            </Columns>
                                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                            <RowStyle BackColor="White" ForeColor="#330099" />
                                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
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
    document.forms[0].Button1.disabled = false;
</script>
</html>
