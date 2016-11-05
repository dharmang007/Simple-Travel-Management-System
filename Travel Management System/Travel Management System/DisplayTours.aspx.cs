using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class DisplayTours : System.Web.UI.Page
    {
        public string url;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            Tour tour = new Tour();
            
        }

        

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<Travel_Management_System.Tour> ListView1_GetData([QueryString("tour_id")] int? tour_id)
        {
            var db = new DataClasses1DataContext();
            IQueryable<Tour> query = db.Tours;           
            return query;
           
        }
    }
}