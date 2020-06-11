using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CNPM.QLNS
{
    public partial class QLNSControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string modul = "";
            if (Request.QueryString["modul"] != null)
                modul = Request.QueryString["modul"];
            switch (modul)
            {
                case "TrangChu":
                    PHQLNS.Controls.Add(LoadControl("TrangChu/TrangChu.ascx"));
                    break;
                case "HoSoNhanVien":
                    PHQLNS.Controls.Add(LoadControl("QuanLyNhanSu/HoSoNhanVien.ascx"));
                    break;
            }
        }
    }
}