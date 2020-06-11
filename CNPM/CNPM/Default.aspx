﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CNPM.Default" %>

<%@ Register Src="~/QLNS/QLNSControl.ascx" TagPrefix="uc1" TagName="QLNSControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="css/jquery.gritter.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
    <form id="form1" runat="server">
        <!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">Matrix Admin</a></h1>
</div>
<!--close-Header-part--> 


<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
        <li class="divider"></li>
        <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
        <li class="divider"></li>
        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
        <li class="divider"></li>
        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
        <li class="divider"></li>
        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
    <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
  </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->
<div id="search">
  <input type="text" placeholder="Search here..."/>
  <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch-->
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
      <li class="active"><a href="Default.aspx?modul=TrangChu"><i class="icon icon-home"></i> <span>Trang Chủ</span></a> </li>
      <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Quản Trị Hệ Thống</span> <span class="label label-important">3</span></a>
          <ul>
                <li><a href="form-common.html">Tiếp nhận nhân viên</a></li>
                <li><a href="Default.aspx?modul=hosonhanvien">Hồ sơ nhân viên</a></li>
                <li><a href="form-wizard.html">Danh sách phòng ban</a></li>
                <li><a href="form-wizard.html">Danh sách danh mục</a></li>
          </ul>
      </li>
      <li class="submenu"> <a href="Default.aspx?modul=QuanLyNhanSu"><i class="icon icon-th-list"></i> <span>Quản Lý Nhân Sự</span> <span class="label label-important">3</span></a>
          <ul>
                <li><a href="Default.aspx?modul=TiepNhanNhanVien">Tiếp nhận nhân viên</a></li>
                <li><a href="Default.aspx?modul=HoSoNhanVien">Hồ sơ nhân viên</a></li>
                <li><a href="form-wizard.html">Danh sách phòng ban</a></li>
                <li><a href="form-wizard.html">Danh sách danh mục</a></li>
          </ul>
      </li>
      <li class="submenu"> <a href="Default.aspx?modul=QuanLyTuyenDung"><i class="icon icon-th-list"></i> <span>Quản Lý Tuyển Dụng</span> <span class="label label-important">3</span></a>
          <ul>
                <li><a href="form-common.html">Tiếp nhận nhân viên</a></li>
                <li><a href="Default.aspx?modul=hosonhanvien">Hồ sơ nhân viên</a></li>
                <li><a href="form-wizard.html">Danh sách phòng ban</a></li>
                <li><a href="form-wizard.html">Danh sách danh mục</a></li>
          </ul>
      </li>
      <li class="submenu"> <a href="Default.aspx?modul=ThongKeTimKiem"><i class="icon icon-th-list"></i> <span>Thống Kê - Tìm Kiếm</span> <span class="label label-important">3</span></a>
          <ul>
                <li><a href="form-common.html">Tiếp nhận nhân viên</a></li>
                <li><a href="Default.aspx?modul=hosonhanvien">Hồ sơ nhân viên</a></li>
                <li><a href="form-wizard.html">Danh sách phòng ban</a></li>
                <li><a href="form-wizard.html">Danh sách danh mục</a></li>
          </ul>
      </li>
      <li class="submenu"> <a href="Default.aspx?modul=TroGiup"><i class="icon icon-th-list"></i> <span>Trợ Giúp</span> <span class="label label-important">3</span></a>
          <ul>
                <li><a href="form-common.html">Tiếp nhận nhân viên</a></li>
                <li><a href="Default.aspx?modul=hosonhanvien">Hồ sơ nhân viên</a></li>
                <li><a href="form-wizard.html">Danh sách phòng ban</a></li>
                <li><a href="form-wizard.html">Danh sách danh mục</a></li>
          </ul>
      </li>
    
    <li class="content"> <span>Monthly Bandwidth Transfer</span>
      <div class="progress progress-mini progress-danger active progress-striped">
        <div style="width: 77%;" class="bar"></div>
      </div>
      <span class="percent">77%</span>
      <div class="stat">21419.94 / 14000 MB</div>
    </li>
    <li class="content"> <span>Disk Space Usage</span>
      <div class="progress progress-mini active progress-striped">
        <div style="width: 87%;" class="bar"></div>
      </div>
      <span class="percent">87%</span>
      <div class="stat">604.44 / 4000 MB</div>
    </li>
  </ul>
</div>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
 
<!--End-Action boxes-->    

<!--Chart-box-->    
    <div>
        <uc1:QLNSControl runat="server" id="QLNSControl" />
    </div>
<!--End-Chart-box--> 
    <hr/>


<!--end-main-container-part-->

<!--Footer-part-->

<div class="row-fluid">
  <div id="footer" class="span12"> 2020 &copy; Nguyễn Quốc Tĩnh Admin. Brought to you by <a href="http://themedesigner.in">Hàn Huyết Tĩnh</a> </div>
</div>

<!--end-Footer-part-->

<script src="js/excanvas.min.js"></script> 
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.flot.min.js"></script> 
<script src="js/jquery.flot.resize.min.js"></script> 
<script src="js/jquery.peity.min.js"></script> 
<script src="js/fullcalendar.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.dashboard.js"></script> 
<script src="js/jquery.gritter.min.js"></script> 
<script src="js/matrix.interface.js"></script> 
<script src="js/matrix.chat.js"></script> 
<script src="js/jquery.validate.js"></script> 
<script src="js/matrix.form_validation.js"></script> 
<script src="js/jquery.wizard.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/matrix.popover.js"></script> 
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.tables.js"></script> 

<script type="text/javascript">
  // This function is called from the pop-up menus to transfer to
  // a different page. Ignore if the value returned is a null string:
  function goPage (newURL) {

      // if url is empty, skip the menu dividers and reset the menu selection to default
      if (newURL != "") {
      
          // if url is "-", it is this page -- reset the menu:
          if (newURL == "-" ) {
              resetMenu();            
          } 
          // else, send page to designated URL            
          else {  
            document.location.href = newURL;
          }
      }
  }

// resets the menu selection upon entry to this page:
function resetMenu() {
   document.gomenu.selector.selectedIndex = 2;
}
</script>
    </form>
</body>
</html>