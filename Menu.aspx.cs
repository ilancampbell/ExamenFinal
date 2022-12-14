using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Riteve
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bagregarc_Click(object sender, EventArgs e)
        {
            ClsUsuarios.nombre = tmcnombre.Text;
            ClsUsuarios.apellido = tmcapellido.Text;
            

            ClsUsuarios.AgregarCliente(ClsUsuarios.nombre, ClsUsuarios.apellido, ClsUsuarios.telefono);

            lblc.Text = "Ingreso exitosamente";
        }

        protected void bconsultarc_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConsultaC.aspx");
        }

        protected void bborrarc_Click(object sender, EventArgs e)
        {
            ClsUsuarios.nombre = tmcnombre.Text;
            ClsUsuarios.apellido = tmcapellido.Text;
            

            ClsUsuarios.BorrarCliente(ClsUsuarios.nombre, ClsUsuarios.apellido, ClsUsuarios.telefono);
        }
    }
}