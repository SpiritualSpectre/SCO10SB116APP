using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacionBase
{
    public partial class Landing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmailUsuario"] != null)
            {
                Email.Text = Session["EmailUsuario"].ToString();
                NivelDeAcceso.Text = Session["NivelDeAcceso"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}