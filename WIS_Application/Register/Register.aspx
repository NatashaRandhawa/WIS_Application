<!-- Regisetr Page
    Coded by - Dev 1
    Start Date - 04/03/2020  -->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WIS_Application.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="../css/MyStyle.css" />
    <title>Register</title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="Myheader">
                <img src="../images/logo.png" alt="logo" />
                <h2>&nbsp;&nbsp;&nbsp; "Building minds"</h2>
            </div>
            <div class="Mylogintable">
                <table id="tableRegister">
                    <tr>
                        <td colspan="2" class="Mytabletitle">WIS Register Portal</td>
                    </tr>
                    <tr>
                        <td><br />Title <span class="MyMandatoryField">*</span></td>
                        <td><br />
                            <asp:DropDownList ID="DDtitle" runat="server">
                                <asp:ListItem>Ms</asp:ListItem>
                                <asp:ListItem>Mrs</asp:ListItem>
                                <asp:ListItem>Mr</asp:ListItem>
                            </asp:DropDownList>
                        &nbsp;<asp:RequiredFieldValidator ID="RFtitle" runat="server" ControlToValidate="DDtitle" ErrorMessage="select title" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>First Name <span class="MyMandatoryField">*</span></td>
                        <td>
                            <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RFfname" runat="server" ControlToValidate="txtFname" ErrorMessage="enter first name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Last Name <span class="MyMandatoryField">*</span></td>
                        <td>
                            <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFlname" runat="server" ControlToValidate="txtLname" ErrorMessage="enter last name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Mother's Name <span class="MyMandatoryField">*</span></td>
                        <td>
                            <asp:TextBox ID="txtMothersName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFmotherName" runat="server" ControlToValidate="txtMothersName" ErrorMessage="enter mother's name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Father's Name <span class="MyMandatoryField">*</span></td>
                        <td>
                            <asp:TextBox ID="txtFathersName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFfatherName" runat="server" ControlToValidate="txtFathersName" ErrorMessage="enter father's name" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Date of Birth</td>
                        <td>
                            <asp:TextBox ID="txtDoB" runat="server" TextMode="Date"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="REdob" runat="server" ControlToValidate="txtDoB" ErrorMessage="not a valid date" ForeColor="Red" ValidationExpression="^(0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01])[-/.](19|20)\d\d$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Country of Birth</td>
                        <td>
                            <asp:DropDownList ID="DDcountry" runat="server">
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>China</asp:ListItem>
                                <asp:ListItem>South Korea</asp:ListItem>
                                <asp:ListItem>Japan</asp:ListItem>
                                <asp:ListItem>New Zealand</asp:ListItem>
                                <asp:ListItem>Tonga</asp:ListItem>
                                <asp:ListItem>Sri Lanka</asp:ListItem>
                                <asp:ListItem>Bangladesh</asp:ListItem>
                                <asp:ListItem>Colombia</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Email <span class="MyMandatoryField">*</span></td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFemail" runat="server" ControlToValidate="txtEmail" ErrorMessage="enter email address" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Password <span class="MyMandatoryField">*</span></td>
                        <td>
                            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="REpassword" runat="server" ControlToValidate="txtPwd" ErrorMessage="must be 8 char long" ForeColor="Red" ValidationExpression="^.*(?=.{8,}).*$"></asp:RegularExpressionValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RFpassword" runat="server" ControlToValidate="txtPwd" ErrorMessage="enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Confirm Password <span class="MyMandatoryField">*</span></td>
                        <td>
                            <asp:TextBox ID="txtCnfrmPwd" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFconfirmpassword" runat="server" ControlToValidate="txtCnfrmPwd" ErrorMessage="confirm password" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtCnfrmPwd" ErrorMessage="password does not match" ForeColor="Red"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="MySubmitbtn">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="Mymsg">
                            <span class="MyMandatoryField">* - mandatory fields</span></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblMsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>

            </div>
            <div class="Myfooter">
                <br /><br />Developed by Natasha
            </div>
        </div>
    </form>
</body>
</html>
