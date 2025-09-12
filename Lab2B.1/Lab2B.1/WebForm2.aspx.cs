using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace Lab2B._1
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        com.lavasoft.wsgeoip.GeoIPService geoIPService = new com.lavasoft.wsgeoip.GeoIPService();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String country = geoIPService.GetIpLocation(TextBox1.Text);

            XmlDocument doc = new XmlDocument();
            doc.LoadXml(country);

            XmlNodeList nodes = doc.DocumentElement.SelectNodes("//GeoIP");

            string iso2code = nodes[0]["Country"].InnerText;

            ipLocation.Text = geoIPService.GetCountryNameByISO2(iso2code) + ", " + nodes[0]["State"].InnerText;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx")
        }
    }
}