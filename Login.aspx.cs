using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Riteve
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bingresar_Click(object sender, EventArgs e)
        {
            ClsUsuarios.usuario = tusuario.Text;
            ClsUsuarios.Clave = tclave.Text;

            if (ClsUsuarios.ValidarLogin(ClsUsuarios.usuario, ClsUsuarios.Clave) > 0)
            {
                
                
                    Response.Redirect("Menu.aspx");
                

            }
            else
            {
                lbl.Text = "Usuario o contraseña incorrecta";
            }
        }

        protected void bcrearc_Click(object sender, EventArgs e)
        {
            Response.Redirect("Crearc.aspx");
        }


    }
}
