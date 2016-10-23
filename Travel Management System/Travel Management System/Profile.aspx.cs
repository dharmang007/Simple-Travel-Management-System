using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //  name.Text = Session["fname"].ToString() + " " + Session["lname"].ToString();
            // name.Text = "NULL".ToString();
        //    string connectString = "~/App_Data/TravelDatase.mdf";
            
            using (DataClasses1DataContext dataclass = new DataClasses1DataContext())
            {
                Session["email"] = "dharmangsolanki999@gmail.com";
               UserInfo user1 = dataclass.UserInfos.SingleOrDefault(i=>i.Email==Session["email"].ToString());
                l1.Text=user1.FirstName;
                
                



            }
        }

    }

    }

