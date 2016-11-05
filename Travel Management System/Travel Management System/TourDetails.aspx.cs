﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class TourDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       
        public Tour TourDetails_GetItem([QueryString("tour_id")] int? tour_id)
        {

            DataClasses1DataContext db = new DataClasses1DataContext();
            Tour tour = new Tour();
            if (tour_id != null)
            {
                tour = db.Tours.SingleOrDefault(i => i.TOUR_ID == tour_id);
                return tour;
            }
            else {
                return null;
            }
        }
    }
}