using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private object txtMessage;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnsend_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            System.Net.NetworkCredential credentials =
                new System.Net.NetworkCredential("rahiminsalleh.taada@gmail.com", "password");
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;

            MailMessage msg = new MailMessage("rahiminsalleh.taada@gmail.com", txtEmail.Text);
            msg.Subject = "Name: " + txtName.Text + "Subject: " + txtMessage;
            smtpClient.Send(msg);
        }

    }
}