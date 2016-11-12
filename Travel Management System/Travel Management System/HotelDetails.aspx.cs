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


        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
      
       
    }
}