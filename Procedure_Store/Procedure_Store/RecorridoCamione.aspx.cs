﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Procedure_Store
{
    public partial class RecorridoCamione : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonVer_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(new Conexion().Conectar());
            SqlCommand query = new SqlCommand("GetWayByIdTruckAndDate", con);
            query.CommandType = CommandType.StoredProcedure;
            query.Parameters.Add("@idCamion", SqlDbType.Int).Value = int.Parse(TextBoxIdCamion.Text);
            query.Parameters.Add("@fecha1", SqlDbType.Date).Value = Calendar1.SelectedDate;
            query.Parameters.Add("@fecha2", SqlDbType.Date).Value = Calendar2.SelectedDate;
            SqlDataAdapter data = new SqlDataAdapter(query);
            DataTable dt = new DataTable();
            data.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}