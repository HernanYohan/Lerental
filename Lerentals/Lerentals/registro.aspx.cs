using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lerentals
{
    public partial class registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BT_Inico_Click1(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Btn_Guardar_Click(object sender, EventArgs e)
        {
            Label_NombreEmpresa.Visible = true;
            TB_NombreEmpresa.Visible = true;
            Label_Nit.Visible = true;
            TB_Nit.Visible = true;

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}