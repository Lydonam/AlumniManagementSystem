using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlumniUI
{
    public partial class createReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String[] temp = new String[4];
            temp[0] = "Profesor";
            temp[1] = "End of the Semester";
            temp[2] = "Student";

            gdvStudentOut.DataSource = temp;
            gdvStudentOut.DataBind();

            GridViewRow row1 = gdvStudentOut.Rows[0];
            row1.Cells[0].Text = "Tampa: Phillies Spring Training 2015";
            row1.Cells[1].Text = "Steve Hazzard";
            row1.Cells[2].Text = "March 29th, 2015";
            GridViewRow row2 = gdvStudentOut.Rows[1];
            row2.Cells[0].Text = "Alumni party";
            row2.Cells[1].Text = "Jane Smith";
            row2.Cells[2].Text = "April 20th, 2014";
            GridViewRow row3 = gdvStudentOut.Rows[2];
            row3.Cells[0].Text = "Alumni Weekend";
            row3.Cells[1].Text = "John Jacob Jingleheimer Schmidt";
            row3.Cells[2].Text = "March 11th, 2014";
            GridViewRow row4 = gdvStudentOut.Rows[3];
            row4.Cells[0].Text = "102939476";
            row4.Cells[1].Text = "Kumar";
            row4.Cells[2].Text = "Snowman";
        }
    }
}