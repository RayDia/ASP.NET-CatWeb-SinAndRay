using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _28199014
{
    public partial class OurHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                //Response.Redirect("Signin.aspx", true);


                Response.Redirect("Signin.aspx?URL=" + Request.Url.ToString());
            }
        }
    }
}