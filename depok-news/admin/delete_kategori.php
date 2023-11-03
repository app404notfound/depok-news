<?php 
$conn = mysqli_connect('localhost','root','','uas_depok_news');
$id = $_GET['id'];

$query = "UPDATE kategori SET status = 'tidak aktif' WHERE id = '$id'";

$sql = mysqli_query($conn, $query);

if ($sql) {
    echo "
        <script>
            alert('Sukses hapus data');
            document.location='tambah_kategori.php';
        </script>
    ";
}else{
    echo "GAGAL";
}
?>