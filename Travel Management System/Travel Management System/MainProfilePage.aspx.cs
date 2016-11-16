using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class MainProfilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null || Session["f_name"]==null)
            {
                Response.Redirect("userlogin.aspx");
            }
            if (!IsPostBack) {

                Label1.Visible = true;
                Label1.Text = "Welcome " + Session["f_name"].ToString()+" "+Session["l_name"];
            }
        }
    }
}