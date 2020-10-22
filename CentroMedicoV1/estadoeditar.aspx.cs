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
    public partial class estadoeditar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Request["id"].ToString());

            buscar(id);

        }

        public void buscar(int id)
        {
 
                Estado obj = BussEstado.Buscar(id);
                if (obj != null)
                {
                    idestado.Text = obj.Idestado.ToString();
                    txtdescripcion.Text = obj.Descripcion.ToString();

                }

        }

            
        protected void btnActualizar_Click(object sender, EventArgs e)
        {

            try
            {
                Estado obj = new Estado();

                obj.Idestado = int.Parse(idestado.Text);
                obj.Descripcion = txtdescripcion.Text;

                BussEstado.Update(obj);

                Response.Redirect("estadolistar.aspx");
            }
            catch (Exception exe)
            {
            }

        }
    }
}