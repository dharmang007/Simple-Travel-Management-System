using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class HotelBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                int i;
                for (i = 1; i < 99; i++)
                {
                    no_of_person.Items.Add(new ListItem(i.ToString()));
                }
            }
        }
        protected void no_of_person_SelectedIndexChanged(object sender, EventArgs e)
        {
            cost.Text = (Convert.ToInt32(no_of_person.SelectedValue) * Convert.ToInt32(Session["h_price"])).ToString();
        }

        protected void Book_Click(object sender, EventArgs e)
        {
            var db = new DataClasses1DataContext();
            HOTEL h = new HOTEL();
            UserInfo u = new UserInfo();
            HOTEL_BOOKING hb = new HOTEL_BOOKING();
            h = db.HOTELs.SingleOrDefault(i => i.hotel_id == Convert.ToInt32(Session["h_id"]));
            u = db.UserInfos.SingleOrDefault(i => i.Email == Session["email"].ToString());
            hb.user_email = u.Email;
            hb.hotel_id= h.hotel_id;
            hb.PERSONS = Convert.ToInt32(no_of_person.SelectedValue);
            hb.Total_Cost = Convert.ToInt32(no_of_person.SelectedValue) * Convert.ToInt32(Session["h_price"]);
            db.HOTEL_BOOKINGs.InsertOnSubmit(hb);
            db.SubmitChanges();
            Response.Redirect("myHotels.aspx");


        }
    }
}