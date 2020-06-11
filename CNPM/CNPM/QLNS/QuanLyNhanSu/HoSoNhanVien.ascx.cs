using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CNPM.QLNS.QuanLyNhanSu
{
    
    public partial class HoSoNhanVien : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataQLNSDataContext conn = new DataQLNSDataContext(@"Data Source=DESKTOP-QO35TO8\SQLEXPRESS;Initial Catalog=QuanLyNhanSu;Integrated Security=True");
            var myQuery = from i in conn.tblNhanViens
                          select i;
            gvNhanVien.DataSource = myQuery;
            gvNhanVien.DataBind();
            gvNhanVien1.DataSource = myQuery;
            gvNhanVien1.DataBind();
        }

        protected void gvNhanVien_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int row = Convert.ToInt32(e.CommandArgument);
           
            if(e.CommandName == "btnXem") {
                txtMaNV.Visible = true;
                txtHoTen.Visible = true;
                txtNgaySinh.Visible = true;
                txtGioiTinh.Visible = true;
                txtDanToc.Visible = true;
                txtDiaChiThuongTru.Visible = true;
                txtChoOHienNay.Visible = true;
                txtQuocTich.Visible = true;
                txtCMND.Visible = true;
                txtDienThoai.Visible = true;
                txtEmail.Visible = true;
                txtTonGiao.Visible = true;
                txtQueQuan.Visible = true;
                txtTTSucKhoe.Visible = true;
                txtChieuCao.Visible = true;
                txtCanNang.Visible = true;
                txtNgayTuyenDung.Visible = true;
                txtHinhThucTuyenDung.Visible = true;
                txtMaPhongBan.Visible = true;
                txtChucVu.Visible = true;
                txtViTriTuyenDung.Visible = true;
                txtTrinhDoHocVan.Visible = true;
                txtTrinhDoChuyenMon.Visible = true;
                txtHinhThucDaoTao.Visible = true;
                txtTrinhDoNgoaiNgu.Visible = true;
                txtTrinhDoTinHoc.Visible = true;

                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                Label5.Visible = true;
                Label6.Visible = true;
                Label7.Visible = true;
                Label8.Visible = true;
                Label9.Visible = true;
                Label10.Visible = true;
                Label11.Visible = true;
                Label12.Visible = true;
                Label13.Visible = true;
                Label14.Visible = true;
                Label15.Visible = true;
                Label16.Visible = true;
                Label17.Visible = true;
                Label18.Visible = true;
                Label19.Visible = true;
                Label20.Visible = true;
                Label21.Visible = true;
                Label22.Visible = true;
                Label23.Visible = true;
                Label24.Visible = true;
                Label25.Visible = true;
                Label26.Visible = true;
                Label27.Visible = true;
                Label28.Visible = true;
                //========================================================================
                txtMaNV.Text = gvNhanVien1.Rows[row].Cells[0].Text;
                txtHoTen.Text = gvNhanVien1.Rows[row].Cells[1].Text;
                txtNgaySinh.Text = gvNhanVien1.Rows[row].Cells[3].Text;
                txtGioiTinh.Text = gvNhanVien1.Rows[row].Cells[2].Text;
                txtDanToc.Text = gvNhanVien1.Rows[row].Cells[6].Text;
                txtDiaChiThuongTru.Text = gvNhanVien1.Rows[row].Cells[10].Text;
                txtChoOHienNay.Text = gvNhanVien1.Rows[row].Cells[11].Text;
                txtQuocTich.Text = gvNhanVien1.Rows[row].Cells[8].Text;
                txtCMND.Text = gvNhanVien1.Rows[row].Cells[5].Text;
                txtDienThoai.Text = gvNhanVien1.Rows[row].Cells[12].Text;
                txtEmail.Text = gvNhanVien1.Rows[row].Cells[13].Text;
                txtTonGiao.Text = gvNhanVien1.Rows[row].Cells[7].Text;
                txtQueQuan.Text = gvNhanVien1.Rows[row].Cells[4].Text;
                txtTTSucKhoe.Text = gvNhanVien1.Rows[row].Cells[14].Text;
                txtChieuCao.Text = gvNhanVien1.Rows[row].Cells[15].Text;
                txtCanNang.Text = gvNhanVien1.Rows[row].Cells[16].Text;
                txtNgayTuyenDung.Text = gvNhanVien1.Rows[row].Cells[17].Text;
                txtHinhThucTuyenDung.Text = gvNhanVien1.Rows[row].Cells[18].Text;
                txtMaPhongBan.Text = gvNhanVien1.Rows[row].Cells[19].Text;
                txtChucVu.Text = gvNhanVien1.Rows[row].Cells[20].Text;
                txtViTriTuyenDung.Text = gvNhanVien1.Rows[row].Cells[21].Text;
                txtTrinhDoHocVan.Text = gvNhanVien1.Rows[row].Cells[22].Text;
                txtTrinhDoChuyenMon.Text = gvNhanVien1.Rows[row].Cells[23].Text;
                txtHinhThucDaoTao.Text = gvNhanVien1.Rows[row].Cells[24].Text;
                txtTrinhDoNgoaiNgu.Text = gvNhanVien1.Rows[row].Cells[25].Text;
                txtTrinhDoTinHoc.Text = gvNhanVien1.Rows[row].Cells[26].Text;
            }
        }
    }
}