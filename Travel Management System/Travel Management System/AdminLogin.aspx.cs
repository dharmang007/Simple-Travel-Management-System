using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var db = new DataClasses1DataContext();
            AdminTable admin = new AdminTable();
            var q = from i in db.AdminTables
                    select i;
            foreach(var i in q )
            {
                if(i.username == uname.Text && i.password == password.Text)
                {
                    Session["uname"] = uname.Text;
                    Response.Redirect("AdminProfile.aspx");
                    
                }
                else if(i.username ==uname.Text && i.password !=password.Text)
                {

                    login_error.Visible = true;
                    login_error.Text = "Wrong Password";
                }
                else if(i.username != uname.Text && i.password == password.Text)
                {
                    login_error.Visible = true;
                    login_error.Text = "Wrong username";
                }
                else
                {
                    login_error.Visible = true;
                    login_error.Text = "Wrong Username and Password";
                }
            }

        }
    }
}