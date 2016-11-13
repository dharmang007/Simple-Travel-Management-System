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
                else
                {
                    login_error.Visible = true;
                    login_error.Text = "Wrong Credentials";
                }
            }
        }
    }
}