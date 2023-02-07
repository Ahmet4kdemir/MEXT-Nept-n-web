using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MEXT_Neptün_web
{
    public partial class E_ticaret : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        

        protected void GridView2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            foreach(GridViewRow gvr in GridView2.Rows)
            {
                
                gvr.BackColor = System.Drawing.Color.White;
                gvr.ForeColor = System.Drawing.Color.Black;
            }
            GridViewRow row = GridView2.Rows[e.NewSelectedIndex];
            row.BackColor = System.Drawing.Color.Red;
            row.ForeColor = System.Drawing.Color.White;
        }





    }
    }
