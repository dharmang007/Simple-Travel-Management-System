using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class Places_view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var db = new DataClasses1DataContext();
            IQueryable<Place> query;
            query = from i in db.Places
                    select i;

            ListView1.DataSource = query;
            ListView1.DataBind();
        }
        
    }
}