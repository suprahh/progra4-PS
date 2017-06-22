using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Procedure_Store
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonGetInfoTruckById_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/InfoCamiones.aspx");
        }

        protected void ButtonGetInfoWay_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/InfoRecorridos.aspx");
        }

        protected void ButtonGetNumberDrivers_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/NumeroChoferes.aspx");
        }

        protected void ButtonGetNumberTrucks_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/NumeroCamiones.aspx");
        }

        protected void ButtonGetSpendTruck_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GastoCamiones.aspx");
        }

        protected void ButtonGetWayByIdTruckAndDate_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RecorridoCamione.aspx");
        }

        protected void ButtonGetWaysDriverByIdDriver_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RecorridoChoferes.aspx");
        }

        protected void ButtonGetWayByOnlyDateOrRange_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RecorridoFechaRango.aspx");
        }
    }
}