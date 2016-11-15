using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class HotelProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["h_id"] == null)
            {
                var db = new DataClasses1DataContext();
                var q = db.HOTELs.SingleOrDefault(i => i.hotel_email == Session["h_email"].ToString());
                Session["h_id"] = q.hotel_id;
            }
        }
    }
}