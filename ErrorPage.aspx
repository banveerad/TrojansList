<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ErrorPage.aspx.cs" Inherits="ErrorPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
                            <a href="#" style="display: none; visibility: hidden;" onclick="return false" id="dummyLink"
                                runat="server">dummy</a>
                            <table width="100%">
                                <tr>
                                    <td align="center" style="padding-top: 100px">
                                        <h3>
                                            <asp:Label ID="finalMsg" runat="server" Text="A fatal error has occured please contact "
                                                ForeColor="Red"></asp:Label> contact@trojanslist.com
                                        </h3>
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
</html>
