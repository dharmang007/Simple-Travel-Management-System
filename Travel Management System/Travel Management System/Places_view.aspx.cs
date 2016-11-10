using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class Places_view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       

        }

        protected void picImg_Click(object sender, ImageClickEventArgs e)
        {
            Label1.Text = ListView1.SelectedValue.ToString() ;   
        }
    }
}