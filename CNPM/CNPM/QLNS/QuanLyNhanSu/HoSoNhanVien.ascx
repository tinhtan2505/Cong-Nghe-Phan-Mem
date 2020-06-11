<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HoSoNhanVien.ascx.cs" Inherits="CNPM.QLNS.QuanLyNhanSu.HoSoNhanVien" %>
<h1 style="text-align:center">DANH SÁCH NHÂN VIÊN</h1>
<div style="text-align:center;">
    <br />
    <asp:GridView ID="gvNhanVien" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" OnRowCommand="gvNhanVien_RowCommand" >
        <Columns>
            <asp:BoundField DataField="MaNV" HeaderText="Mã Nhân Viên" HtmlEncode="False" />
            <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" HtmlEncode="False" />
            <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" HtmlEncode="False" />
            <asp:BoundField DataField="GioiTinh" HeaderText="Giới Tính" HtmlEncode="False" />
            <asp:BoundField DataField="MaPhongBan" HeaderText="Phòng Ban" HtmlEncode="False" />
            <asp:ButtonField ButtonType="Button" CommandName="btnXem" HeaderText="Chi Tiết" Text="Xem hồ sơ" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:GridView ID="gvNhanVien1" runat="server" Visible="False">
    </asp:GridView>
</div>
<br />
<asp:Label ID="Label15" runat="server" Text="THÔNG TIN CÁ NHÂN" Font-Size="30px" style="margin-left:15px" Visible="False"></asp:Label>

<div style="margin-left:100px; margin-top:15px">

    <asp:Label ID="Label1" runat="server" Text="Mã Nhân Viên: " Width="100px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtMaNV" runat="server" Width="100px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Họ Tên: " Width="100px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtHoTen" runat="server" Width="200px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Ngày Sinh: " Width="100px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtNgaySinh" runat="server" Width="200px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Giới Tính: " Width="100px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtGioiTinh" runat="server" Width="100px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;
    <br />
    <asp:Label ID="Label5" runat="server" Text="Dân Tộc: " Width="100px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtDanToc" runat="server" Width="100px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label7" runat="server" Text="Thường Trú:" Width="100px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtDiaChiThuongTru" runat="server" Width="200px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label9" runat="server" Text="Tạm Trú:" Width="100px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtChoOHienNay" runat="server" Width="200px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Quốc Tịch:" Width="100px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtQuocTich" runat="server" Width="100px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;
    <br />
    <asp:Label ID="Label6" runat="server" Text="CMND:" Width="100px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtCMND" runat="server" Width="100px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label11" runat="server" Text="Điện Thoại:" Width="100px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtDienThoai" runat="server" Width="200px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label12" runat="server" Text="Email:" Width="100px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" Width="200px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" Text="Tôn Giáo:" Width="100px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtTonGiao" runat="server" Width="100px" Visible="False"></asp:TextBox>
    <br />
    <asp:Label ID="Label22" runat="server" Text="Quê Quán:" Width="100px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtQueQuan" runat="server" Width="200px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label23" runat="server" Text="TT Sức Khỏe:" Width="100px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtTTSucKhoe" runat="server" Width="200px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label26" runat="server" Text="Chiều Cao:" Width="100px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtChieuCao" runat="server" Width="100px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label27" runat="server" Text="Cân Nặng:" Width="100px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtCanNang" runat="server" Width="100px" Visible="False"></asp:TextBox>
    
&nbsp;</div>

<br />
<asp:Label ID="Label28" runat="server" Text="TRÌNH ĐỘ CHUYÊN MÔN" Font-Size="30px" style="margin-left:15px" Visible="False"></asp:Label>
<div style="margin-left:100px; margin-top:15px">
    <asp:Label ID="Label16" runat="server" Text="Ngày Tuyển Dụng: " Width="100px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtNgayTuyenDung" runat="server" Width="200px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;
    <asp:Label ID="Label17" runat="server" Text="Hình Thức Tuyển Dụng: " Width="152px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtHinhThucTuyenDung" runat="server" Width="175px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;
    <asp:Label ID="Label18" runat="server" Text="Mã Phòng Ban: " Width="100px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtMaPhongBan" runat="server" Width="100px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;
    <asp:Label ID="Label19" runat="server" Text="Mã Chức Vụ: " Width="80px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtChucVu" runat="server" Width="100px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;
    <br />
    <asp:Label ID="Label20" runat="server" Text="Vị Trí Tuyển Dụng: " Width="150px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtViTriTuyenDung" runat="server" Width="150px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label21" runat="server" Text="Trình Độ Chuyên Môn:" Width="150px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtTrinhDoChuyenMon" runat="server" Width="175px" Visible="False"></asp:TextBox>
   &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label13" runat="server" Text="Trình Độ Học Vấn:" Width="150px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtTrinhDoHocVan" runat="server" Width="255px" Visible="False"></asp:TextBox>
    <br />
    <asp:Label ID="Label24" runat="server" Text="Trình Độ Ngoại Ngữ:" Width="150px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtTrinhDoNgoaiNgu" runat="server" Width="150px" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label25" runat="server" Text="Trình Độ Tin Học:" Width="150px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtTrinhDoTinHoc" runat="server" Width="175px" Visible="False"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label14" runat="server" Text="Hình Thức Đào Tạo:" Width="150px" Visible="False"></asp:Label>
    <asp:TextBox ID="txtHinhThucDaoTao" runat="server" Width="255px" Visible="False"></asp:TextBox>
</div>