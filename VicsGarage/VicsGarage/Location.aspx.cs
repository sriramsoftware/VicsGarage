using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Location : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            firstName.Focus();
            locationPanel.Visible = false;

        }
    }

    protected void submitButton_Click(object sender, EventArgs e)
    {
        Page.Validate("ErrorSummary");
        if (Page.IsValid) { 
        locationPanel.Visible = true;
        firstName.Text = string.Empty;
        lastName.Text = string.Empty;
        phoneNum.Text = string.Empty;
        email.Text = string.Empty;
        message.Text = string.Empty;
        }
        
    }
}