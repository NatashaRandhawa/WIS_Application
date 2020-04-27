<!-- Login Page
    Coded by - Dev 2
    Start Date - 06/03/2020  -->


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WIS_Application.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../css/MyStyle.css" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="Myheader">
                <img src="../images/logo.png" alt="logo" />
                <h2>&nbsp;&nbsp;&nbsp; "Building minds"</h2>
            </div><br /><br />
            <div class="Mylogintable">
                <table id="tableRegister">
                    <tr>
                        <td colspan="2" class="Mytabletitle">WIS Login Portal</td>
                    </tr>
                    <tr>
                        <td>Email <span class="MyMandatoryField">*</span></td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RFloginEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="enter email address" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Password <span class="MyMandatoryField">*</span></td>
                        <td>
                            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RFloginPassword" runat="server" ControlToValidate="txtPwd" ErrorMessage="enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="MySubmitbtn">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="MynewUser">New User !!! <a href="../Register/Register.aspx">Register</a></td>
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

            </div><br /><br />
            <div class="Myfooter">
                <br /><br />Developed by Natasha
            </div>
        </div>
    </form>
</body>
</html>
