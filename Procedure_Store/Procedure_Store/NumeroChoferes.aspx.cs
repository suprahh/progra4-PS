using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Procedure_Store
{
    public partial class NumeroChoferes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonNChoferes_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(new Conexion().Conectar());
            SqlCommand query = new SqlCommand("GetDriversNumber", con);
            query.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter data = new SqlDataAdapter(query);
            DataTable dt = new DataTable();
            data.Fill(dt);
            LabelNchoferes.Text += dt.Rows[0][0].ToString();
        }
    }
}