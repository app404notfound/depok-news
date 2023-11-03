<?php 
$conn = mysqli_connect('localhost','root','','uas_depok_news');
$id = $_GET['judul'];

$query = "UPDATE berita SET status = 'tidak aktif' WHERE judul = '$id'";

$sql = mysqli_query($conn, $query);

if ($sql) {
    echo "
        <script>
            alert('Sukses hapus data');
            document.location='entries.php';
        </script>
    ";
}else{
    echo "GAGAL";
}
?>