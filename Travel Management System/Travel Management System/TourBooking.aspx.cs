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

        protected void Book_Click(object sender, EventArgs e)
        {
            var db = new DataClasses1DataContext();
            Tour t = new Tour();
            UserInfo u = new UserInfo();
            Tour_booking tb = new Tour_booking();
            t = db.Tours.SingleOrDefault(i=>i.TOUR_ID == Convert.ToInt32(Session["t_id"]));
            u = db.UserInfos.SingleOrDefault(i=>i.Email == Session["email"].ToString());
            tb.Email = u.Email;
            tb.Tour_id = t.TOUR_ID;
            tb.No_of_persons = Convert.ToInt32(no_of_person.SelectedValue);
            tb.Total_cost = Convert.ToInt32(no_of_person.SelectedValue) * Convert.ToInt32(Session["t_price"]);
            db.Tour_bookings.InsertOnSubmit(tb);
            db.SubmitChanges();
            Response.Redirect("myTours.aspx");
            

        }
    }
}