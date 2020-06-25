using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dzisiajLabel.Text = DateTime.Today.ToShortDateString();
        }

        protected void wyswietlButton_Click(object sender, EventArgs e)
        {
            imieLabel.Text = "Witaj " + imieTextBox.Text;
        }
    }
}