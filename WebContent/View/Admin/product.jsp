<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <base href=".">
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Quản trị hệ thống</title>
      <link rel="shortcut icon" href="favicon.png">
      <link href="BackEnd/css/bootstrap.min.css" rel="stylesheet">
      <link href="BackEnd/css/font-awesome.min.css" rel="stylesheet">
      <link href="BackEnd/css/admin.css" rel="stylesheet">
      <link href="BackEnd/css/introjs.min.css" rel="stylesheet">
      <script type="text/javascript" src="BackEnd/js/jquery-1.10.2.min.js"></script>
      <script type="text/javascript" src="BackEnd/js/bootstrap.min.js"></script>
      <script type="text/javascript" src="BackEnd/js/intro.min.js"></script>
      <script type="text/javascript" src="BackEnd/js/admin.js"></script>
      <!--Hỗ trợ IE nhận dạng thẻ HTML5-->
      <!--[if lt IE 9]>
          <script src="js/html5shiv.min.js"></script>
          <script src="js/respond.min.js"></script>
      <![endif]-->
   </head>
   <body>
      <jsp:include page="adminheader.jsp"></jsp:include>
	<jsp:include page="adminleft.jsp"></jsp:include>
         <div id="main">
            <ol class="breadcrumb">
         <li><a href="index.html"><i class="fa fa-home"></i> Trang quản trị</a></li>
         <li class="active"><a href="product.html">Sản phẩm</a></li>
      </ol>
      <div class="col-xs-12">
         <form id="post_form" method="post" action="" role="form">
            <div class="col-xs-12">
               <div class="form-group">
                  <!-- Single button -->
                  <div class="btn-group">
                     <select id="task" name="task" class="form-control">
                        <option>Tác vụ</option>
                        <option value="delete">Xóa</option>
                        <option value="deactive">Ẩn</option>
                        <option value="active">Hiện</option>
                     </select>
                  </div>
                  <a href="NewProductController" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Thêm mới</a>
                  <div class="btn-group pull-right hidden-xs" id="div-search">
                     <input id="search" name="search" type="text" value="" class="form-control" placeholder="Tìm kiếm">
                     <span class="fa fa-search"></span>
                  </div>
               </div>
               <table class="table table-bordered table-hover">
                  <thead>
                     <tr>
                        <th><input id="check_all" type="checkbox"></th>
                        <th class="hidden-xs">ID</th>
                        <th class="hidden-xs">Mã</th>
                        <th>Sản phẩm</th>
                        <th class="hidden-sm hidden-xs">Giá</th>
                        <th class="hidden-sm hidden-xs">Ngày thêm</th>
                        <th>Sửa</th>
                        <th>Tình trạng</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <td>
                           <input name="id[]" type="checkbox" value="0">
                        </td>
                        <td class="hidden-xs">1</td>
                        <td class="hidden-xs">SP01</td>
                        <td>
                           <a href="new-product.html">Sản phẩm số 1</a>
                        </td>
                        <td class="hidden-sm hidden-xs">15,000,000</td>
                        <td class="hidden-sm hidden-xs">2014-06-19 01:05:13</td>
                        <td>
                        <a href="new-product.html"><i class="fa fa-edit" data-toggle="tooltip" data-placement="top" title="Sửa sản phẩm"></i></a>
                        </td>
                        <td>
                           <i class="fa fa-times text-danger" data-toggle="tooltip" data-placement="top" title="Đã ẩn với người dùng"></i>
                        </td>
                     </tr>
                     <tr>
                        <td>
                           <input name="id[]" type="checkbox" value="0">
                        </td>
                        <td class="hidden-xs">2</td>
                        <td class="hidden-xs">SP02</td>
                        <td>
                           <a href="new-product.html">Sản phẩm số 2</a>
                        </td>
                        <td class="hidden-sm hidden-xs">700,000</td>
                        <td class="hidden-sm hidden-xs">2014-06-19 01:05:13</td>
                         <td>
                        <a href="new-product.html"><i class="fa fa-edit" data-toggle="tooltip" data-placement="top" title="Sửa sản phẩm"></i></a>
                        </td>
                        <td>
                           <i class="fa fa-check text-success" data-toggle="tooltip" data-placement="top" title="Đang hiển thị"></i>
                        </td>
                     </tr>
                     <tr>
                        <td>
                           <input name="id[]" type="checkbox" value="0">
                        </td>
                        <td class="hidden-xs">3</td>
                        <td class="hidden-xs">SP03</td>
                        <td>
                           <a href="new-product.html">Sản phẩm số 3</a>
                        </td>
                        <td class="hidden-sm hidden-xs">2,000,000</td>
                        <td class="hidden-sm hidden-xs">2014-06-19 01:05:13</td>
                         <td>
                        <a href="new-product.html"><i class="fa fa-edit" data-toggle="tooltip" data-placement="top" title="Sửa sản phẩm"></i></a>
                        </td>
                        <td>
                           <i class="fa fa-check text-success" data-toggle="tooltip" data-placement="top" title="Đang hiển thị"></i>
                        </td>
                     </tr>
                  </tbody>
               </table>
               <div class="text-right">
                  <ul class="pagination" id="step5">
                     <li class="disabled"><span>«</span></li>
                     <li class="active"><span>1</span></li>
                     <li><a href="#">2</a></li>
                     <li><a href="#">3</a></li>
                     <li><a href="#">»</a></li>
                  </ul>
               </div>
               <p><strong><i class="fa fa-bookmark"></i>Ghi chú: </strong></p>
               <p class="note-items"><i class="fa fa-check text-success"></i> Hiển thị với người dùng.</p>
               <p class="note-items"><i class="fa fa-times text-danger"></i> Ẩn với người dùng</p>
            </div>
         </form>
      </div>
         </div>
         <!--END #main-->
      </div>
   </body>
</html>
