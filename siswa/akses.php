<?php
if(!isset($_SESSION['id_user'])){
//jika belum login jangan lanjut..
header("Location:http://localhost/absensi2/");
}

//cek level user
if($_SESSION['akses']!="siswa" and $_SESSION['akses']!="kesiswaan"){
header("Location:http://localhost/absensi2/404.php");//jika bukan admin jangan lanjut
}
?>
