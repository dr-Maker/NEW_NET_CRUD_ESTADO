using Buss;
using Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentroMedicoV1
{
    public partial class estadoborrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Request["id"].ToString());

            Estado obj = BussEstado.Buscar(id);
            if (obj != null)
            {
                idestado.Text = obj.Idestado.ToString();
                txtdescripcion.Text = obj.Descripcion.ToString();

            }
        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            try
            {

                int id = int.Parse(idestado.Text);
                BussEstado.Delete(id);
                Response.Redirect("estadolistar.aspx");

            }
            catch (Exception exe)
            {
            }
        }
    }
}