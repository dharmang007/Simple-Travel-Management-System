using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class TourByAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str;
            var db = new DataClasses1DataContext();
            Place p = new Place();
            str = GridView1.SelectedRow.Cells[1].Text;
            p = db.Places.SingleOrDefault(i => i.place_id == Convert.ToInt32(str));
            PlaceName.Text = p.city; 
            
        }
    }
}