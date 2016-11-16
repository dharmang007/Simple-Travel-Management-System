using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class DisplayToursAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {

                if (DropDownList1.Items.FindByText("All") == null)
                {
                    DropDownList1.Items.Add(new ListItem("All"));
                }
                var db = new DataClasses1DataContext();
                IQueryable<Tour> query;
                query = from i in db.Tours
                        select i;

                ListView1.DataSource = query;
                ListView1.DataBind();

            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var db = new DataClasses1DataContext();
            IQueryable<Tour> query;
            if (DropDownList1.SelectedValue.ToString().Equals("All"))
            {
                query = from i in db.Tours
                        select i;
            }
            else
            {
                query = from i in db.Tours
                        where i.PLACE == DropDownList1.SelectedValue.ToString()
                        select i;
            }
            ListView1.DataSource = query;
            ListView1.DataBind();
        }
    }
}