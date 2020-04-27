using System;

namespace WIS_Application
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Store hash pasword in the database to make application more secure and prevent unauthorized access.
            string hashPassword = Security.getHash(txtPwd.Text.Substring(4), txtPwd.Text);
            String dob;
            // Check for null value for dob. Other fields have required field validation.
            dob = (txtDoB.Text == "") ? "n/a" : txtDoB.Text; 
            DataLogicLayer.saveuser(DDtitle.Text, txtFname.Text, txtLname.Text, txtMothersName.Text, 
                txtFathersName.Text, dob, DDcountry.Text, txtEmail.Text, hashPassword);
            
            lblMsg.Text = "Registered Successfully!!";
            Response.Redirect("../Login/Login.aspx");
        }
    }
}