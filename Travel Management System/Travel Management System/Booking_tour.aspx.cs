using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class Booking_tour : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                
                int i;
                for (i = 1; i < 51; i++) {
                    no_of_person.Items.Add(new ListItem(i.ToString()));
                }           
            }

        }

        protected void no_of_person_SelectedIndexChanged(object sender, EventArgs e)
        {
            cost.Text = (Convert.ToInt32(no_of_person.SelectedValue) * Convert.ToInt32(Session["t_price"]) ).ToString() ;
        }
    }
}