<?php 
    session_start();    
    if (empty($_SESSION['nama_lengkap'])) {
        header('location:login-admin.php');
    }    
    $conn = mysqli_connect('localhost','root','','uas_depok_news');                   
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Depok News | Admin</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="../asset/admin.css" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'> 
        <link rel="icon" href="https://www.pinclipart.com/picdir/middle/454-4545041_newspaper-png-icon-news-paper-logo-icon-clipart.png">
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  margin-left: 10px;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #000;
  color: white;
}
</style>
    </head>
    <body style="font-family: 'Roboto'">
        <div class="header">
            <img src="https://pbs.twimg.com/profile_images/830104654675480576/VcAQ6uZC_400x400.jpg" alt="Depok Info">
            <div class="nav-right">
                <ul>
                    <li><a href="logout.php" onclick="return confirm('Apakah anda yakin ?')">Logout →</a></li>
                </ul>
            </div>
        </div>
        <div class="content">            
            <h4><i class="fa fa-fw fa-user"></i> Welcome, <?= $_SESSION['nama_lengkap'] ?></h4>
            <hr class="divider">
            <br>
            <div class="navbar-left">
                <ul>
                    <li><a href="index.php"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a></li>
                    <li><a href="entries.php" class="active"><i class="fa fa-fw fa-table"></i> Entries</a></li>
                </ul>
            </div>
            <div style="float:left; margin-left:1%;">
                <a href="tambah_berita.php" style="float:left;">+ Tambah Berita</a> &nbsp;| <a href="tambah_kategori.php">+ Tambah Kategori</a>
                <div style="padding-left:10px; width:100%;">
                    <br>
                    <h2>News</h2>

                    <hr>
                    <br>
                    <br>
                </div>
                <table id="customers">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Kategori</th>
                            <th>Judul</th>
                            <th>Isi</th>                                                                       
                            <th>Tanggal</th> 
                            <th>Action</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <?php                              
                        $query = "SELECT * FROM berita LEFT JOIN kategori ON berita.id_kategori = kategori.id WHERE berita.status = 'aktif'";
                        $sql = mysqli_query($conn, $query);
                        $num = 0;
                        while($data = mysqli_fetch_array($sql)){
                            $num++;                   
                        ?>
                        <tr>
                            <td><?= $num ?></td>
                            <td><?= $data['tema'] ?></td>
                            <td><?= $data['judul'] ?></td>
                            <td><?= substr($data['isi'], 0, 31).'...' ?></td>                            
                            <td><?= $data['tanggal'] ?></td> 
                            <td>
                                <a href="ubah_berita.php?judul=<?= $data['judul'] ?>" style="text-decoration: none;"><i class="fa fa-fw fa-pencil"></i> Ubah</a>
                                |
                                <a href="hapus_berita.php?judul=<?= $data['judul'] ?>" onclick="return confirm('Apakah anda yakin ?')" style="text-decoration: none;"><i class="fa fa-fw fa-trash"></i> Hapus</a>
                            </td>
                        </tr>
                        <?php } ?>
                    </tbody>
                </table>                
            </div>
        </div>
    </body>
</html>