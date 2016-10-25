using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class DisplayTours : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StringWriter str = new StringWriter();
            Html32TextWriter html = new Html32TextWriter(str);
            DataClasses1DataContext dataclass = new DataClasses1DataContext();
            Tour tour =new Tour();
            for (int i = 0; i < 3; i++)
            {

            }

        }
    }
}