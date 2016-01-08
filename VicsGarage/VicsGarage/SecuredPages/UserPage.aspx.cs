using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class UserPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (!IsPostBack)
        {
            if (Profile.LastUpdatedDate == DateTime.MinValue)
            {
                ProviderInfo.Visible = true;
                ShowAccountInfo.Visible = false;
                CancelButton.Visible = false;
                
                
                
            }
            else
            {
                PanelFileUpload.Visible = false;
                ShowAccountInfo.Visible = true;
                CancelButton.Visible = false;
                

                LblFirstName.Text = Profile.FirstName;
                LblLastName.Text = Profile.LastName;
                LblVehicleMake.Text = Profile.Make;
                LblVehicleModel.Text = Profile.Model;
                LblYearOfManufacture.Text = Profile.YearOfManufacture;
                LblColor.Text = Profile.Color;
                LblEngine.Text = Profile.Engine;
                LblTransmission.Text = Profile.Transmission;
                ShowAccountInfo.Visible = true;
                ProviderInfo.Visible = false;

                if (Profile.ProfilePic != null)
                {
                    string base64String = Convert.ToBase64String(Profile.ProfilePic, 0, Profile.ProfilePic.Length);
                    ProfileImage.ImageUrl = "data:" + Profile.ProfilePicType + ";base64," + base64String;
                }
            }

            if (Context.User.IsInRole("Admin"))
            {
                AdminLinksLabel.Visible = true;
                ManageUsers.Visible = true;
                EditRoles.Visible = true;
            }
            else
            {
                AdminLinksLabel.Visible = false;
                ManageUsers.Visible = false;
                EditRoles.Visible = false;
            }

        }
        
    }
   
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        Profile.FirstName = TxtFirstName.Text;
        Profile.LastName = TxtLastName.Text;
        Profile.Make = TxtVehicleMake.Text;
        Profile.Model = TxtVehicleModel.Text;
        Profile.YearOfManufacture = TxtYearOfManufacture.Text;
        Profile.Color = TxtColor.Text;
        Profile.Engine = TxtEngine.Text;
        Profile.Transmission = TxtTransmission.Text;
        Profile.Save();

        LblFirstName.Text = Profile.FirstName;
        LblLastName.Text = Profile.LastName;
        LblVehicleMake.Text = Profile.Make;
        LblVehicleModel.Text = Profile.Model;
        LblYearOfManufacture.Text = Profile.YearOfManufacture;
        LblColor.Text = Profile.Color;
        LblEngine.Text = Profile.Engine;
        LblTransmission.Text = Profile.Transmission;
        ShowAccountInfo.Visible = true;
        ProviderInfo.Visible = false;

    }
    protected void BtnEdit_Click(object sender, EventArgs e)
    {

        CancelButton.Visible = true; 

        ShowAccountInfo.Visible = false;
        ProviderInfo.Visible = true;
        TxtFirstName.Text = Profile.FirstName;
        TxtLastName.Text = Profile.LastName;
        TxtVehicleMake.Text = Profile.Make;
        TxtVehicleModel.Text = Profile.Model;
        TxtYearOfManufacture.Text = Profile.YearOfManufacture;
        TxtColor.Text = Profile.Color;
        TxtEngine.Text = Profile.Engine;
        TxtTransmission.Text = Profile.Transmission;
    }




    protected void CancelButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SecuredPages/UserPage.aspx");
    }
    protected void LinkEditProfilePic_Click(object sender, EventArgs e)
    {
        PanelFileUpload.Visible = true;
    }
    protected void BtnUpload_Click(object sender, EventArgs e)
    {
        if (ProfilePicUpload.HasFile)
        {
            HttpPostedFile file = ProfilePicUpload.PostedFile;
            byte[] data = new byte[file.ContentLength];
            file.InputStream.Read(data, 0, file.ContentLength);

            Profile.ProfilePic = data;
            Profile.ProfilePicType = file.ContentType;
            Profile.Save();

            if (Profile.ProfilePic != null)
            {
                string base64String = Convert.ToBase64String(Profile.ProfilePic, 0, Profile.ProfilePic.Length);
                ProfileImage.ImageUrl = "data:" + Profile.ProfilePicType + ";base64," + base64String;
            }

            PanelFileUpload.Visible = false;

        }
    }
    protected void EditRoles_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminPages/RoleManagement.aspx");
    }
    protected void ManageUsers_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminPages/ManageUsers.aspx");
    }
    protected void ChangePassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePassword.aspx");
    }
}
