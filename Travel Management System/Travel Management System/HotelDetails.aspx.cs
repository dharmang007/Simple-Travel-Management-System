using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class HotelDetails : System.Web.UI.Page
    {
        
        void Page_Load(object sender, EventArgs e)
        {
            string str = Request.QueryString["hotel_id"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var db = new DataClasses1DataContext();
            HOTEL h = new HOTEL();
            Session["h_id"] = Request.QueryString["hotel_id"];
            h= db.HOTELs.SingleOrDefault(i=>i.hotel_id == Convert.ToInt32(Session["h_id"]));
            Session["h_price"] = h.ROOM_COST;
            Response.Redirect("HotelBooking.aspx");
        }


        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id


    }
}