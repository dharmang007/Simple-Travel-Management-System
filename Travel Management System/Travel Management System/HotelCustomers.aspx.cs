using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class HotelCustomers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str;
            var db = new DataClasses1DataContext();
            UserInfo user = new UserInfo();
            str=GridView1.SelectedRow.Cells[1].Text;
            lname.Text = str;
            user = db.UserInfos.SingleOrDefault(i=>i.Email==str);
            fname.Text = user.FirstName;
            lname.Text = " " + user.LastName;
            gender.Text = user.Gender;
            address.Text = (user.Street + "\r\n" + user.City + "\r\n" + user.State).Replace("\r\n","<br/>");

        }
    }
}