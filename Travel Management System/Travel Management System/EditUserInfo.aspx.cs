using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class EditUserInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {

            using (DataClasses1DataContext dataclass = new DataClasses1DataContext())
            {
                UserInfo user = new UserInfo();
                user.Email = email.Text;
                user.FirstName = fname.Text;
                user.LastName = lname.Text;
                user.Gender = gender.Text;
                user.Password = password1.Text;
                String dateofbirth = dob.Text;
                DateTime date = Convert.ToDateTime(dateofbirth);   // to convert the date  ..bau Important che bhai
                user.dob = date;
                user.Street = street.Text;
                user.City = city.Text;
                user.State = state.Text;
                dataclass.UserInfos.Attach(user); // UserInfos with 's' is the same as the UserInfo ,but with 's'.
                dataclass.SubmitChanges();
                Response.Redirect("Profile.aspx");
            }
        }
    }
}