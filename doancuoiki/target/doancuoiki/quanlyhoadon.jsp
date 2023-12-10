<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <title>Admin</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <link rel="icon" type="image/png" href="./img/logo.png"/>

    <!-- Import lib -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">
    <link rel="stylesheet" type="text/css" href="./css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <!-- End import lib -->

    <link rel="stylesheet" type="text/css" href="css/styleAdmin.css">
</head>
<body class="overlay-scrollbar">
<!-- navbar -->
<div class="navbar">
    <!-- nav left -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link">
                <i class="fa-solid fa-bars" onclick="collapseSidebar()"></i>
            </a>
        </li>
        <li class="nav-item">
            <img src="./img/logo.png" alt="logo" class="logo logo-light">
        </li>
    </ul>
    <!-- end nav left -->

    <!-- nav right -->
    <ul class="navbar-nav nav-right">
        <li class="nav-item dropdown">
            <a class="nav-link">
                <i class="fas fa-bell dropdown-toggle" data-toggle="notification-menu"></i>
                <span class="navbar-badge">1</span>
            </a>
            <ul id="notification-menu" class="dropdown-menu notification-menu">
                <div class="dropdown-menu-header">
						<span>
							Thông báo
						</span>
                </div>
                <div class="dropdown-menu-content overlay-scrollbar scrollbar-hover">
                    <li class="dropdown-menu-item">
                        <a href="#" class="dropdown-menu-link">
                            <div>
                                <i class="fas fa-gift"></i>
                            </div>
                            <span>
									Thông báo kết thúc khuyến mãi
									<br>
									<span>
										15/07/2020
									</span>
								</span>
                        </a>
                    </li>
                </div>
                <div class="dropdown-menu-footer">
						<span>
						</span>
                </div>
            </ul>
        </li>

        <li class="nav-item avt-wrapper">
            <div class="avt dropdown">
                <img src="./img/admin1.jpg" alt="User image" class="dropdown-toggle" data-toggle="user-menu">
                <ul id="user-menu" class="dropdown-menu">
                    <li class="dropdown-menu-item">
                        <a class="dropdown-menu-link">
                            <div>
                                <i class="fas fa-user-tie"></i>
                            </div>
                            <span>Thông tin cá nhân</span>
                        </a>
                    </li>
                    <li class="dropdown-menu-item">
                        <a href="#" class="dropdown-menu-link">
                            <div>
                                <i class="fas fa-sign-out-alt"></i>
                            </div>
                            <span>Đăng xuất</span>
                        </a>
                    </li>
                </ul>
            </div>
        </li>
    </ul>
    <!-- end nav right -->
</div>
<!-- end navbar -->
<!-- sidebar -->
<div class="sidebar">
    <ul class="sidebar-nav">
        <li class="sidebar-nav-item">
            <a href="#" class="sidebar-nav-link" style="margin-top: 20px;">
                <div>
                    <i class="fa-solid fa-signal"></i>
                </div>
                <span>
						Thông số bán hàng
					</span>
            </a>
        </li>
        <li class="sidebar-nav-item">
            <a href="admin.jsp" class="sidebar-nav-link">
                <div>
                    <i class="fa fa-user"></i>
                </div>
                <span>Quản lý nhân viên</span>
            </a>
        </li>
        <li class="sidebar-nav-item">
            <a href="quanlysanpham.jsp" class="sidebar-nav-link">
                <div>
                    <i class="fa fa-mobile"></i>
                </div>
                <span>Quản lý sản phẩm</span>
            </a>
        </li>
        <li class="sidebar-nav-item">
            <a href="quanlyhoadon.jsp" class="sidebar-nav-link">
                <div>
                    <i class="fa-solid fa-layer-group"></i>
                </div>
                <span>Quản lý hóa đơn</span>
            </a>
        </li>
        <li class="sidebar-nav-item">
            <a href="quanlytaikhoan.jsp" class="sidebar-nav-link">
                <div>
                    <i class="fa-solid fa-circle-user"></i>
                </div>
                <span>Quản lý tài khoản</span>
            </a>
        </li>
    </ul>
</div>
<!-- end sidebar -->

<!-- main content -->
<div class="wrapper">
    <div class="row">
        <div class="col-8 col-m-12 col-sm-12">
            <div class="card">
                <div class="card-header" style="display: flex">
                    <h3>
                        Quản lý hóa đơn
                    </h3>
                    <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal" style="margin-left: auto">
                        <span>Thêm đơn hàng mới</span></a>

                </div>
                <div class="card-content">
                    <table>
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Mã khách hàng</th>
                            <th>Địa chỉ giao hàng</th>
                            <th>Trạng thái đơn hàng</th>
                            <th>Phương thức thanh toán</th>
                            <th>Ngày đặt hàng</th>
                            <th>Ngày nhận hàng</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>or_1</td>
                            <td>u_1</td>
                            <td>Đại học Nông Lâm - Linh Trung - Thủ Đức - Hồ Chí Minh</td>
                            <td>Đang xử lý</td>
                            <td>Tiền mặt</td>
                            <td>20/10/2023</td>
                            <td>23/10/2023</td>
                            <td>
                                <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons"
                                                                                                 data-toggle="tooltip"
                                                                                                 title="Edit">&#xE254;</i></a>
                            </td>
                        </tr>
                        <tr>
                            <td>or_2</td>
                            <td>u_3</td>
                            <td>Đại học Nông Lâm - Linh Trung - Thủ Đức - Hồ Chí Minh</td>
                            <td>Đang giao</td>
                            <td>Chuyển khoản</td>
                            <td>20/10/2023</td>
                            <td>24/10/2023</td>
                            <td>
                                <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons"
                                                                                                 data-toggle="tooltip"
                                                                                                 title="Edit">&#xE254;</i></a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- Edit-->
    <div id="editEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form>
                    <div class="modal-header">
                        <h4 class="modal-title">Thay đổi thông tin</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>#</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Mã khách hàng</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Địa chỉ giao hàng</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Trạng thái đơn hàng</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Ngày sinh</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Phương thức thanh toán</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Ngày đặt hàng</label>
                            <input type="date" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Ngày nhận hàng</label>
                            <input type="date" class="form-control" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy">
                        <input type="submit" class="btn btn-info" value="Lưu">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!--/ Edit-->

    <!--/ Add-->
    <div id="addEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form>
                    <div class="modal-header">
                        <h4 class="modal-title">Thêm đơn hàng</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>#</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Mã khách hàng</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Địa chỉ giao hàng</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Trạng thái đơn hàng</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Ngày sinh</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Phương thức thanh toán</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Ngày đặt hàng</label>
                            <input type="date" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Ngày nhận hàng</label>
                            <input type="date" class="form-control" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy">
                        <input type="submit" class="btn btn-success" value="Thêm">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!--/ Add -->
</div>
<!-- end main content -->

<!-- import script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
<script src="js/admin.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- end import script -->
</body>
</html>