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
            try
            {
                //http://www.dreamincode.net/forums/topic/183333-aspnet-contact-form-tutorial/ 
                //Email to the company customer service

                MailMessage msg = new MailMessage();
                msg.To.Add("spikeupservice@gmail.com");
                MailAddress address = new MailAddress(txtEmail.Text);
                msg.From = address;
                msg.Subject = SubjectList.Text;
                msg.IsBodyHtml = true;
                msg.Body = "This Message was sent by " + "<b>" + txtName.Text + "</b>";
                msg.Body += ". Included Email Enquiry: " + "<b>" + txtEmail.Text + "</b>" + "<br />" + "<br />" + "<b><i>The following Message:</i></b> " + "<br />" + txtMessage.Text + "<br />" + "<br />" + "Spike It UP!";

                SmtpClient client = new SmtpClient();
                client.Host = "smtp.gmail.com";
                client.Port = 587;
                client.Credentials = new NetworkCredential("spikeupservice@gmail.com", "Spike@UP2017");
                client.EnableSsl = true;

                client.Send(msg);

                //https://forums.asp.net/t/1717606.aspx?Popup+Message+Box+in+asp+net+c+
                //Pop Up message
                Response.Write("<script language=javascript>alert('Thank you for contacting us.')</script>");

                txtEmail.Text = "";
                txtMessage.Text = "";
                txtName.Text = "";
            }
            catch(Exception ex)
            {
                Response.Write("<script language=javascript>alert('Could not send the e-mail - ERROR')</script>" + ex.Message);
            }

        }
    }
}