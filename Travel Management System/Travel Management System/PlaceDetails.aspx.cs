using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class DisplayPlace : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = Request.QueryString["place_id"];
           var db = new DataClasses1DataContext();
            Place p = new Place();
            var q = db.Places.SingleOrDefault(i => i.place_id == Convert.ToInt32(str));
            pic.ImageUrl = q.pic;
            city.Text = q.city;
            state.Text = q.state;
            desc.Text = q.description;

        }

       
    }
}