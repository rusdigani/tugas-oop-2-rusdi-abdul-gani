<!DOCTYPE html>
<html lang="en">
<head>

  <?php
  include 'koneksi.php';
  ?>

<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<!-- costum css -->
<link rel="stylesheet" href="style.css">
<link rel="shortcut icon" href="images/map2.png" />
	<title>Tugas-OOP-2</title>

	<!-- jquery -->
	<script src= "js/jquery-3.6.0.min.js"></script>
	<script>
	$(document).ready(function() {
		$('#propinsi').change(function() {
			var propinsi_kode = $(this).val();

			$.ajax({
				type: 'POST',
				url: 'kabkota.php',
				data: 'kode_provinsi='+propinsi_kode,
				success: function(response) {
					$('#kabkota').html(response);
				}
			});
		})
	});
	</script>

</head>
<body>

        <section class="container-fluid">
        <section class="row justify-content-center">
        <section class="col-12 col-sm-6 col-md-4">
     <form class="form-container">
        <div class="text-center">
        </div>

            <hr>
                <h2> Form Pilih Wilayah </h2>
             <hr></hr>
                <!-- Provinsi -->
                <div class="form-group">
                        <select class="form-control" name="propinsi" id="propinsi">
                        <option value="">Pilih Provinsi</option>
                        <?php
                        //menginput nama propinsi yang ada di database
                        $propinsi = mysqli_query($connect, "SELECT * FROM tbl_provinsi");
                        while($p=mysqli_fetch_array($propinsi)){
                        echo "<option value=\"$p[kode_provinsi]\">$p[nama_provinsi]</option>\n";
                        }
                        ?>
                        </select>
                </div>

                 <!-- Kabupaten/Kota -->
                <div class="form-group">
                   <select class="form-control" name="kabkota" id="kabkota">
                        <option value="">Pilih Kabupaten/Kota</option>
                        <?php
                        //menginput nama provinsi yang ada di database
                        $kota = mysqli_query($connect, "SELECT * FROM tbl_kabkota ORDER BY nama_kabkota");
                        while($p=mysqli_fetch_array($propinsi)){
                        echo "<option value=\"$p[kode_kabkota]\">$p[nama_kabkota]</option>\n";
                        }
                        ?>
                        </select>
            </div>
            <a href="#myModal" class="trigger-btn" data-toggle="modal">
                <section class="row justify-content-left">
                <section class="col-12 col-sm-6 col-md-4">

     </form>
        </section>
        </section><br>

          <footer class="bg-light text-center text-lg-start">
		  <div>
          <a href="https://github.com/rusdigani/tugas-oop-2-rusdi-abdul-gani">My Github - Rusdi Abdul Gani</a>
          </div>
          </footer>

    </section>

</body>
</html>