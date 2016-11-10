using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class Hotel_Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            HOTEL h = new HOTEL();
            h.HOTEL_NAME = name.Text;
            h.STREET = street.Text;
            h.CITY = city.Text;
            h.STATE = state.SelectedValue.ToString();
            h.PHONE1 =Convert.ToInt32(no1.Text);
            if (no2.Text != null)
                h.PHONE2 = Convert.ToInt32(no2.Text);
            h.ROOM_COST = Convert.ToInt32(cost.Text);
            
            HttpPostedFile postedfile = fu1.PostedFile;
            
            postedfile.SaveAs(Server.MapPath("~/Hotel_pics/")+ Path.GetFileName(postedfile.FileName));
            h.pic = "~/Hotel_pics/" + postedfile.FileName;
            
            db.HOTELs.InsertOnSubmit(h);
            db.SubmitChanges();
        }
    }
}