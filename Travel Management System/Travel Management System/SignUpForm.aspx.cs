using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
           
            Session["email"] = email.Text;
            Session["fname"] = fname.Text;
            Session["lname"] = lname.Text;
            Session["gender"] = gender.Text;
            Session["password"] = password1.Text;
            Session["dob"] = dob.Text;
            Session["street"] = street.Text;
            Session["city"] = city.Text;
            Session["state"] = state.Text;


            DataContext dc = new DataContext("~/App_Data/TravelDatabase.mdf");
            using (DataClasses1DataContext dataclass = new DataClasses1DataContext())
            {
                UserInfo user = new UserInfo();
                user.Email = email.Text;
                Session["email"] = email.Text;

                user.FirstName = fname.Text;
                Session["f_name"] = fname.Text;

                user.LastName = lname.Text;
                Session["l_name"] = lname.Text;
                user.Gender = gender.Text;
                user.Password = password1.Text;
                String dateofbirth = dob.Text;
                DateTime date = Convert.ToDateTime(dateofbirth);   // to convert the date  ..bau Important che bhai
                user.dob = date;
                user.Street = street.Text;
                user.City = city.Text;
                user.State = state.Text;
                dataclass.UserInfos.InsertOnSubmit(user);  // UserInfos with 's' is the same as the UserInfo ,but with 's'.
                dataclass.SubmitChanges();
                Response.Redirect("MainProfilePage.aspx");
            }
        }
    }
}