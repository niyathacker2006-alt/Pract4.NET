using System;
using System.Text;

namespace Practical4
{
    public partial class EventRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void cvTerms_ServerValidate(
            object source,
            System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            args.IsValid = chkTerms.Checked;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                StringBuilder workshops = new StringBuilder();
                foreach (System.Web.UI.WebControls.ListItem item in cblWorkshop.Items)
                {
                    if (item.Selected)
                    {
                        workshops.Append(item.Text + ", ");
                    }
                }
                string selectedWorkshops = workshops.ToString();
                if (selectedWorkshops.Length > 0)
                {
                    selectedWorkshops = selectedWorkshops.TrimEnd(',', ' ');
                }
                else
                {
                    selectedWorkshops = "None";
                }
                lblMessage.Text =
                    "Registration Successful!<br/>" +
                    "Name: " + Server.HtmlEncode(txtName.Text) + "<br/>" +
                    "Email: " + Server.HtmlEncode(txtEmail.Text) + "<br/>" +
                    "Mobile: " + Server.HtmlEncode(txtMobile.Text) + "<br/>" +
                    "Event: " + Server.HtmlEncode(ddlEvent.SelectedItem.Text) + "<br/>" +
                    "Gender: " + Server.HtmlEncode(rblGender.SelectedValue) + "<br/>" +
                    "Workshops: " + Server.HtmlEncode(selectedWorkshops);
            }
        }
    }
}
