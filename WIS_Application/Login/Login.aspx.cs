using System;

namespace WIS_Application.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Get hash value of the password first, before checking in the database.
            String password = Security.getHash(txtPwd.Text.Substring(4), txtPwd.Text);
            bool result = DataLogicLayer.Authenticate(txtEmail.Text, password);
            if (result)
            {
                lblMsg.Text = "Login Successful";
                Response.Redirect("../Default.aspx");
            }
            else
                lblMsg.Text = "Login Unsuccessful";
            txtEmail.Text = "";
            txtPwd.Text = "";
        }
    }
}