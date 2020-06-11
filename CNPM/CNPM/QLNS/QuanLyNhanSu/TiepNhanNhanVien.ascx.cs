using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CNPM.QLNS.QuanLyNhanSu
{
    public partial class TiepNhanNhanVien : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataQLNSDataContext conn = new DataQLNSDataContext(@"Data Source=DESKTOP-QO35TO8\SQLEXPRESS;Initial Catalog=QuanLyNhanSu;Integrated Security=True");
            string manv = Application["manv"].ToString();
            var myQuery = from i in conn.tblNhanViens
                          where i.MaNV == manv
                          select i;
            if (myQuery.Count() == 0) return;
            tblNhanVien itemnv = myQuery.First();
        }
    }
}