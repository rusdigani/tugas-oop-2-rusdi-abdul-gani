<?php
$connect = new mysqli("localhost","root","","wilayah");
// Memeriksa Koneksi
if ($connect -> connect_errno) {
  echo "Koneksi Gagal!: " . $connect -> connect_error;
  exit();
}
?>