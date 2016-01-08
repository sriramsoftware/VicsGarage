using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calender : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void myCalendar_SelectionChanged(object sender, EventArgs e)
    {
        LblCalenderInfo.Text = string.Format("You selected: {0}. Book it?", myCalendar.SelectedDate.ToLongDateString());

        if (myCalendar.SelectedDate.ToShortDateString() == "10/31/2015")
            LblCalenderInfo.Text = "<b> Halloween BOO!</b>";
        if (myCalendar.SelectedDate.ToShortDateString() == "11/26/2015")
            LblCalenderInfo.Text = " <b>Thanksgiving CLOSED!</b>";
        if (myCalendar.SelectedDate.ToShortDateString() == "11/27/2015")
            LblCalenderInfo.Text = " <b>Black Friday. Check out our MASSIVE Sale!</b> ";
        if (myCalendar.SelectedDate.ToShortDateString() == "12/25/2015")
            LblCalenderInfo.Text = "<b>Christmas CLOSED!</b>";
        if (myCalendar.SelectedDate.ToShortDateString() == "1/01/2015")
            LblCalenderInfo.Text = " <b>Happy New Years CLOSED!</b>";
    }

}