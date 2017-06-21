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
    public partial class InfoRecorridos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonListar_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(new Conexion().Conectar());
            SqlCommand query = new SqlCommand("GetInfoWay", con);
            query.CommandType = CommandType.StoredProcedure;
            query.Parameters.Add("@lugar", SqlDbType.VarChar,30).Value = TextBoxRecorrido.Text;
            SqlDataAdapter data = new SqlDataAdapter(query);
            DataTable dt = new DataTable();
            data.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}