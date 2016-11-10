using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class AddTour : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext dataclass = new DataClasses1DataContext();

            //    tour = dataclass.Tours.SingleOrDefault(i=>i.DAYS==15);
           
        }
        Tour tour = new Tour();
        protected void Register_Click(object sender, EventArgs e)
        {
            using (DataClasses1DataContext dataclass = new DataClasses1DataContext())
            {
              
               // tour.TOUR_ID = tour_id.Text;
                tour.TOUR_NAME = tour_name.Text;
                tour.PLACE = DropDownList1.SelectedValue.ToString();
                tour.DAYS = Convert.ToInt32(days.Text);
                tour.LOCATIONS = locations.Text;
                tour.PRICE = Convert.ToInt32(price.Text);
                tour.TOUR_INFO = tour_info.Text;
                //tour.pic = FileUpload1.FileBytes;
                HttpPostedFile fileposted =   FileUpload1.PostedFile;
                string str = Path.GetFileName(fileposted.FileName);
                Stream stream = fileposted.InputStream;
                BinaryReader br = new BinaryReader(stream);
                br.ReadBytes((int)stream.Length);      
                tour.pic = "~/Tour_pics/"+str;
                fileposted.SaveAs(Server.MapPath("~/Tour_pics/")+str);
                
                Label7.Text= FileUpload1.FileName;
                dataclass.Tours.InsertOnSubmit(tour);
                dataclass.SubmitChanges();
                Info.Text = tour.TOUR_INFO.Replace("\r\n", "<br/>");

               /* GridView1.DataSource = dataclass.Tours;
                GridView1.DataBind();*/
                Response.Redirect("DisplayTours.aspx");


            }
        }

    }
}