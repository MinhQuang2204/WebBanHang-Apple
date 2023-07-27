
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/" var="root"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AdminLTE 3 | DataTables</title>
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="${root}plugins/fontawesome-free/css/all.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="${root}plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="${root}plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <link rel="stylesheet" href="${root}plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${root}asset/dist/css/adminlte.min.css">
    <script src="https://cdn.tiny.cloud/1/781p7i27bbwdg757ok7m74oq4ml6c276q7hqp1940jb3stfi/tinymce/6/tinymce.min.js"
            referrerpolicy="origin"></script>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <!-- Navbar -->
    <%@include file="./ad_header.jsp" %>
    <!-- /.navbar -->
    <!-- Main Sidebar Container -->
    <%@include file="./sidebar.jsp" %>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>DataTables</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="${root}admin/admin.jsp">Home</a></li>
                            <li class="breadcrumb-item active">Tất cả bài viết</li>
                        </ol>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Thông tin banner</h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form id="addBlogForm" action="Ad_AddBanner" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="maB" value="${banner.maB}">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="exampleInputName1">Tiêu đề</label>
                                        <input type="text" class="form-control" id="exampleInputName1"
                                               placeholder="Enter name" name="tieude" value="${banner.tieuDeB}"/>
                                    </div>
                                    <div class="form-group">
                                        <form action="/action_page.php">
                                            <input type="file" name="image"/><br><br>
                                            <input type="hidden" value="${banner.anh}" name="oldImage">
                                        </form>
                                    </div>
                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary" form="addBlogForm">Đăng</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content-wrapper -->
        <%@include file="./ad_footer.jsp" %>
        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->
    <%@include file="./jqueryScript.jsp" %>
    <script src="/bower/tinymce/tinymce.min.js"></script>
    <script type="text/javascript">
        tinymce.init({
            selector: '#content',
            plugins: "image code",
            image_title: true,
            automatic_uploads: true,
            file_picker_types: 'image',
            file_picker_callback: function (cb, value, meta) {
                var input = document.createElement('input');
                input.setAttribute('type', 'file');
                input.setAttribute('accept', 'image/*');
                input.onchange = function () {
                    var file = this.files[0];
                    var reader = new FileReader();

                    reader.onload = function () {
                        var id = 'blobid' + (new Date()).getTime();
                        var blobCache = tinymce.activeEditor.editorUpload.blobCache;
                        var base64 = reader.result.split(',')[1];
                        var blobInfo = blobCache.create(id, file, base64);
                        blobCache.add(blobInfo);
                        cb(blobInfo.blobUri(), {title: file.name});
                    };
                    reader.readAsDataURL(file);
                };
                input.click();
            }
        });
    </script>
</body>
</html>