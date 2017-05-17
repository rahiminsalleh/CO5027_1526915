using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Name"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtName")).Text;
            SqlDataSource1.InsertParameters["Brand"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("DropDownList1")).SelectedValue;
            SqlDataSource1.InsertParameters["Price"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtPrice")).Text;
            SqlDataSource1.InsertParameters["Stock"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtStock")).Text;
            SqlDataSource1.Insert();
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/ViewProductList.aspx");
        }
    }
}