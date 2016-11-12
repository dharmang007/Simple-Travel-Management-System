using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DropDownList1.Items.FindByText("All") == null)
            {
                DropDownList1.Items.Add(new ListItem("All"));
            }
            var db = new DataClasses1DataContext();
            IQueryable<HOTEL> query;
            query = from i in db.HOTELs
                    select i;

            ListView1.DataSource = query;
            ListView1.DataBind();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var db = new DataClasses1DataContext();
            IQueryable<HOTEL> q;
            if (DropDownList1.SelectedValue.ToString().Equals("All"))
            {
                q = from i in db.HOTELs
                    select i;
            }
            else
            {
                q = from i in db.HOTELs
                    where i.STATE == DropDownList1.SelectedValue.ToString()
                    select i;
            }

            ListView1.DataSource = q;
            ListView1.DataBind();


        }
    }
}