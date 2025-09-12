using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyConsumer
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        // localhost.MyWService είναι ο "τύπος" που δημιούργησε η υπηρεσία
        // η myWS είναι η μεταβλητή που δηλώνουμε, τύπου localhost.MyWService
        localhost.WebService myWS = new localhost.WebService();


        protected void Page_Load(object sender, EventArgs e)
        {
            // η κλήση της μεθόδου ServerTime() δεν χρειάζεται παράμετρους εισόδους
            // επιστρέφεται string, το οποίο εμφανίζεται μέσω του label lblServerTime
            time.Text = myWS.ServerTime();
        } 

        protected void Button1_Click(object sender, EventArgs e)
        {
            // σε 2 ακέραιες μεταβλητές, υποδεχόμαστε ότι έδωσε ο χρήστης
            // ως απαραίτητη είσοδο για τη κλήση της μεθόδου CalculatePercentage()
            int myVal = Convert.ToInt32(TextBox1.Text);
            int myTot = Convert.ToInt32(TextBox2.Text);
            // το αποτέλεσμα (ακέραιος) της μεθόδου της υπηρεσίας
            // μετατρέπεται σε string, για να εμφανιστεί μέσω του label lblPercentage
            percentenge.Text = Convert.ToString(myWS.CalculatePercentage(myTot,
            myVal)) + "%";
            Label4.Visible = true;
        }
    }
}