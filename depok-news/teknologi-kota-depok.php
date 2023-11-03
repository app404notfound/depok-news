<!DOCTYPE html>
<html lang="en">

<head>
    <title>Depok News</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="asset/style.css">
    <link rel="icon" href="https://www.pinclipart.com/picdir/middle/454-4545041_newspaper-png-icon-news-paper-logo-icon-clipart.png">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<style>
    .nav-link a:hover{
        color: white;
    }
</style>
<body>

    <div class="header">
        <h1>Depok News</h1>
        <p>Berita kota depok ? disini tempatnya.</p>
    </div>

     <ul class="nav justify-content-center bg-dark">
      <li class="nav-item">
        <a class="nav-link" href="index.php">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="sejarah-kota-depok.php">Sejarah</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="wisata-kota-depok.php">Wisata</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="teknologi-kota-depok.php">Teknologi</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="populer-kota-depok.php">Populer</a>
      </li>
    </ul>   
    <div class="container-fluid">
    <div class="row">       
        <div class="col-md-12">
            <?php 
            $conn = mysqli_connect('localhost','root','','uts_depok_news');
            $query = "SELECT * FROM berita WHERE status = 'aktif' AND id_kategori = 6 ORDER BY tanggal DESC";
            $sql = mysqli_query($conn, $query);
            while ($data = mysqli_fetch_array($sql)) {     
                $tglNow = date_create($data['tanggal']);                       
            ?>
                <h2><u><?= $data['judul'] ?></u></h2>
                <h5>Dipublish pada, <?= date_format($tglNow, 'd F Y') ?></h5>
                <img src="uploads/<?= $data['gambar'] ?>" class="img-fluid mx-auto mt-2 mb-2" height="300" alt="Gambar">    
                <p style="letter-spacing:0.3px;" class="p-2"><?= $data['isi'] ?></p>               
                <a href="#" class="btn btn-primary" onclick="window.open('<?= $data['sumber'] ?>')">Selengkapnya >></a> 
                <br>           
                <br>
            <?php } ?>
        </div>
    </div>
    </div>

    <div class="footer">
        <h4 style="color:white;">Copyright &copy; Depok News <?= date('Y') ?></h2>
    </div>

</body>

</html>