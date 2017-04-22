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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {

            MailMessage msg = new MailMessage();
            msg.To.Add(new MailAddress("spikeupservice@gmail.com"));
            MailAddress address = new MailAddress(txtEmail.Text);
            msg.From = address;
            msg.Subject = SubjectList.Text;
            msg.Body = "Name: " + txtName.Text + Environment.NewLine + "Email: "+ txtEmail.Text + Environment.NewLine + txtMessage.Text;

            SmtpClient client = new SmtpClient();
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.Credentials = new NetworkCredential("spikeupservice@gmail.com", "Spike@UP2017");
            client.EnableSsl = true;

            client.Send(msg);

            txtEmail.Text = "";
            txtMessage.Text = "";
            txtName.Text = "";


        }
    }
}