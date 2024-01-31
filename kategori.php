<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>AdminLTE 3 | Starter</title>

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <!-- <style>
        @media (min-width: 800px) {
            .nav-link {
                display: none;
            }
        }
    </style> -->
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Sidebar -->
  <?php include "sidebar.php"?>
  <!-- /Sidebar -->

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>
  </nav>
  <!-- /Navbar -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="margin-left: 260px;">
    <!-- Content --><section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Data Produk</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example2" class="table table-bordered table-hover">
                <thead>
                <tr>
                 
                  <th>Kategori</th>
                  <th>Aksi</th>
                  <!-- <th>CSS grade</th> -->
                </tr>
                </thead>
                <tbody>
               
                
                <tr>
                 
                  <td>-</td>
                    <td><a href="#" class="btn btn-danger">
                            <i class="fa fa-trash"></i> Hapus
                        </a>
                        <a href="#" class="btn btn-primary">
                        <i class="fas fa-pen"></i> Edit
                        </a>
                      <td>
                 
                  <!-- <td>U</td> -->
                </tr>
                <div class="form-group">
                    <label for="exampleInputPassword1">Tambah kategori</label>
                    <input type="text" class="form-control" id="" placeholder="Masukan Kategori">
                    <button type="submit" class="btn btn-primary">Tambahkan produk</button>
                  </div>
                </tbody>
                <!-- <tfoot>
                <tr>
                  <th>Rendering engine</th>
                  <th>Browser</th>
                  <th>Platform(s)</th>
                  <th>Engine version</th>
                  <th>CSS grade</th>
                </tr>
                </tfoot> -->
              </table>
            </div>
            <!-- /.card-body -->
          </div>
</table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- Your content goes here -->
    <!-- /Content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <div class="p-3">
      <h5>Title</h5>
      <p>Sidebar content</p>
    </div>
  </aside>
  <!-- /.control-sidebar -->

</div>
<!-- /.wrapper -->

<!-- REQUIRED SCRIPTS -->
<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- bs-custom-file-input -->
<script src="plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script type="text/javascript">
  $(document).ready(function () {
    bsCustomFileInput.init();
  });
</script>



</body>
</html>
