using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Management_System
{
    public partial class Add_Place : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["admin"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }

        }

        protected void reset_Click(object sender, EventArgs e)
        {
            city.Text = "";
            DropDownList1.SelectedValue = null;
            desc.Text = "";
            city_pic = null;

        }
        Place p = new Place();
        HttpPostedFile postedfile = null;
        protected void Submit_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            p.city = city.Text;
            p.state = DropDownList1.SelectedValue.ToString();
            p.description = desc.Text.Replace("\r\n","<br/>");
            postedfile = city_pic.PostedFile;
            string str = Path.GetFileName(postedfile.FileName);
            Stream stream = postedfile.InputStream;
            BinaryReader br = new BinaryReader(stream);
            Byte[] bytes = br.ReadBytes((int)stream.Length);
            string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
            Image1.ImageUrl = "data:image/png;base64," + base64String;
            if (city_pic.HasFile)
                postedfile.SaveAs(Server.MapPath("~/Places_pic/") + str);
            p.pic = "~/Places_pic/" + str;
            db.Places.InsertOnSubmit(p);
            db.SubmitChanges();
            Response.Redirect("AdminProfile.aspx");

        }

    }
}