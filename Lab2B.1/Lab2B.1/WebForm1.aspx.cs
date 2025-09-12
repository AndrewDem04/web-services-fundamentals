using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2B._1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        org.oorsprong.www.CountryInfoService countryInfoServiceq = new org.oorsprong.www.CountryInfoService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                DropDownList1.Items.Add("‐Select‐");
                // η μέθοδος επιστρέφει έναν πίνακα tCountryCodeAndName[]
                // ΠΡΟΣΟΧΗ λοιπόν στον τρόπο δήλωσης (τύπο) της μεταβλητής μας
                org.oorsprong.www.tCountryCodeAndName[] can =
                countryInfoServiceq.ListOfCountryNamesByName();
                for (int i = 0; i < can.Length; i++)
                    DropDownList1.Items.Add(can[i].sName);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String selectedItem = DropDownList1.Text;
            if (!DropDownList1.SelectedIndex.Equals(0)) {
                String ISO = countryInfoServiceq.CountryISOCode(selectedItem);
                ISOCODE.Text = ISO;

                Image1.ImageUrl = countryInfoServiceq.CountryFlag(ISO);

                Capital.Text = countryInfoServiceq.CapitalCity(ISO);

                CountryCode.Text = countryInfoServiceq.CountryIntPhoneCode(ISO);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }
    }
}