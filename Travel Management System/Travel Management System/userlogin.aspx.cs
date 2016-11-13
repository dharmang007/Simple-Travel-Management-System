using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class userlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void login(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = from i in db.UserInfos                    
                    select new {i.Email,i.Password,i.FirstName,i.LastName};

            foreach(var i in q)
            {
                if (i.Email == email.Text && i.Password == password.Text)
                {
                    Session["email"] = email.Text;
                    Session["f_name"] = i.FirstName;
                    Session["l_name"] = i.LastName;
                    
                    Response.Redirect("MainProfilePage.aspx");
                }
                else if(i.Email == email.Text && i.Password != password.Text)
                {
                    login_error.Visible = true;
                    login_error.Text = "Wrong Password !";
                }
                else if (i.Email != email.Text && i.Password == password.Text)
                {
                    login_error.Visible = true;
                    login_error.Text = "Wrong Email!";
                }
                else
                {
                    login_error.Visible = true;
                    login_error.Text = "Wrong Credentials";
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = from i in db.HOTELs
                    select new { i.hotel_email, i.password,i.hotel_id};

            foreach (var i in q)
            {
                if (i.hotel_email == h_email.Text && i.password == h_password.Text)
                {
                    Session["h_email"] = h_email.Text;
                    Session["h_id"] = i.hotel_id;
                    Response.Redirect("HotelProfile.aspx");
                }
                else if (i.hotel_email == h_email.Text && i.password != h_password.Text)
                {
                    login_error.Visible = true;
                    login_error.Text = "Wrong Password !";
                }
                else if (i.hotel_email != h_email.Text && i.password == h_password.Text)
                {
                    login_error.Visible = true;
                    login_error.Text = "Wrong Email!";
                }
                else
                {
                    login_error.Visible = true;
                    login_error.Text = "Wrong Credentials";
                }
            }
        }
    }
}