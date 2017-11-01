<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TNC.aspx.cs" Inherits="TNC" %>

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
                        <td width="85%" valign="top" style="padding-right: 30px; padding-left: 30px">
                            <h2>
                                Terms and Conditions.</h2>
                            <div>
                                <p>
                                    Welcome to our website Trojans List. To use this website you must be a student at
                                    University of Southern California with a valid @usc.edu id. If you continue to browse
                                    and use this website, you are <b>agreeing</b> to comply with and be bound by the
                                    following terms and conditions of use. If you <b>disagree</b> with any part of these
                                    terms and conditions, please <b>do not</b> use our website.</p>
                                <p>
                                    The term 'Trojans List' or 'us' or 'we' refers to the owner of the website.
                                </p>
                                <p>
                                    <h4>
                                        The use of this website is subject to the following terms of use:</h4>
                                </p>
                                <ul>
                                    <li>The content of the pages of this website is for your general information and use
                                        only. It is subject to change without notice. </li>
                                    <li>Neither we nor any third parties provide any warranty or guarantee as to the accuracy,
                                        timeliness, performance, completeness or suitability of the information and materials
                                        found or offered on this website for any particular purpose. You acknowledge that
                                        such information and materials may contain inaccuracies or errors and we expressly
                                        exclude liability for any such inaccuracies or errors to the fullest extent permitted
                                        by law.</li>
                                    <li>We do not review users listings or content and are not involved in the actual transaction
                                        between buyers and sellers we have no control over and do not guarantee the quality,
                                        safety or legality of items advertised, the truth or accuracy of listings, the truth
                                        or accuracy of feedback or other content posted by users on our sites, the ability
                                        of sellers to sell items, the ability of buyers to pay for items, or that a buyer
                                        or seller will actually complete a transaction or return an item. Your use of any
                                        information or materials you purchase on this website is entirely at your own risk,
                                        for which we shall not be liable. It shall be your own responsibility to ensure
                                        that any products, or information available through this website meet your specific
                                        requirements. </li>
                                    <li>Unauthorized use of this website may give rise to a claim for damages and/or be
                                        a criminal offence.</li>
                                </ul>
                                <h4>
                                    Content Removal or Rejection.</h4>
                                <p>
                                    You agree that Trojans List may edit, remove or decline to post, any of Your Content
                                    in its sole discretion that does not comport with its mission.</p>
                                <p>
                                    We may issue you with warnings, limit, suspend, or terminate our services, restrict
                                    or prohibit access to and your activities on our sites if we find you indulging
                                    in the following activities</p>
                                <ul>
                                    <li>We think that you are infringing the rights of third parties.
                                        <br />
                                        1. Posting, listing or uploading content or items in an inappropriate category or
                                        areas on our sites.
                                        <br />
                                        2. Manipulating the price of any item or interfering with other user&#39;s listings.
                                    </li>
                                    <li>Posting anything that is unlawful, threatening, abusive, libelous, defamatory or
                                        indecent information of any kind, including conduct that would constitute a criminal
                                        offense, give rise to civil liability or violate any local, state, national or international
                                        law or otherwise cause injury of any kind.</li>
                                    <li>Submitting or posting anything that consists of or contains software viruses, political
                                        campaigning, commercial solicitation, chain letters, mass mailing, or any form of
                                        "spam".</li>
                                    <li>Instigating or encouraging others to commit illegal activities or cause injury or
                                        property damage to any person. You are solely responsible for any injury caused.</li>
                                    <li>You Reproduce, duplicate, display, publish, distribute, transmit, modify, repost,
                                        copy, sell ,resell, visit, create derivative works from, or otherwise exploit the
                                        Site or any content on the Site for any purpose whatsoever, except Your Content
                                        may be used by You for personal use.</li>
                                    <li>Circumvent, disable or interfere with security-related features of the Site or features
                                        that prevent or restrict use or copying of any content on the Site, whether posted
                                        by You or by other users of the Site or enforce limitations on use of the Site.</li>
                                    <li>Act in a manner that is hateful or discriminatory based on race, color, sex, religion.</li>
                                    <li>Nationality, ethnic or national origin, martial status, disability, sexual orientation
                                        or age or is otherwise objectionable, as reasonably determined by Community Lab.</li>
                                    <li>Stalk or otherwise harass anyone and/or post pornographic or indecent materials
                                        or otherwise post anything inflammatory, vulgar or overtly insulting.</li>
                                    <li>Post links to external websites, unless integral to the conversation.</li>
                                    <li>Upload infringing content or distribute any materials unless expressly authorized,
                                        or publicize any copyrighted works on or from the Site or otherwise facilitate the
                                        unlawful distribution of copyrighted content.</li>
                                    <li>Make any defamatory or libel comments or otherwise violate anyone's rights in their
                                        name or likeness or use the Site to impersonate any person or entity, or falsely
                                        state or otherwise misrepresent Your affiliation with a person or entity.</li>
                                </ul>
                                <h4>
                                    No Trojans List Liability for Damages.</h4>
                                Use of and browsing the Site is at Your own risk. Neither Trojans List nor any other
                                party involved in creating, producing, delivering or maintaining the Site is liable
                                for any direct, incidental, consequential, indirector punitive damages arising out
                                of Your access to, or use of the Site. Trojans List assumes no responsibility, and
                                shall not be liable for, any damages to, or viruses that may infect, users’ computer
                                equipment or other property on account of users’ access to, use of, contribution
                                to, or browsing in any content of the Site.
                            </div>
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
