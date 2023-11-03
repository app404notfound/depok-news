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
        <style>
            table{
                margin-top: 10px;
            }
            th{
                width: 150px;
            }
        </style>
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
            <div style="float:left;padding-left:10px;">
                <a href="entries.php" style="float:left;">Back</a>
                <br>
                <h2>Kategori</h2>
                <hr>
                <table border="1">
                    <thead>
                        <tr>
                            <th>No</th>                            
                            <th>Tema</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php                              
                        $query = "SELECT * FROM kategori WHERE status = 'aktif'";
                        $sql = mysqli_query($conn, $query);
                        $num = 0;
                        while($data = mysqli_fetch_array($sql)){
                            $num++;                   
                        ?>
                        <tr>
                            <td align="center"><?= $num ?></td>
                            <td><?= $data['tema'] ?></td>
                            <td><?= $data['status'] ?></td>
                            <td align="center"><a href="delete_kategori.php?id=<?= $data['id'] ?>" onclick="return confirm('Apakah anda yakin ?')">Delete</a></td>
                        </tr>
                        <?php } ?>
                    </tbody>
                </table>
                <br>
                <hr>
                <style>
                .form-input {
                    width: 50%;
                    height: 30px;
                    margin-top: 5px;
                    font-size: 16px;
                    padding-left: 5px;
                }
                </style>
                <h3>Tambah Kategori</h3>
                <form method="post">
                    <label>
                        Tema
                    </label>
                    <br>
                    <input type="text" name="tema" placeholder="Tema Berita" class="form-input" required>
                    <br>
                    <br>
                    <label>
                        Status
                    </label>
                    <br>
                    <input type="text" name="status" placeholder="Tema Berita" value="aktif" class="form-input" readonly required>
                    <br>
                    <button type="submit" name="simpan_kategori" style="height:30px;margin-top:5px;width:100px;">Simpan</button>
                </form>
            </div>
            <?php 
            
            if (isset($_REQUEST['simpan_kategori'])) {
                
                $tema = htmlspecialchars(mysqli_real_escape_string($conn, $_REQUEST['tema']), ENT_QUOTES);
                $status = $_REQUEST['status'];
                $query = "INSERT INTO kategori(`tema`,`status`) VALUES('$tema','$status')";
                $sql = mysqli_query($conn, $query);

                if ($sql) {
                    echo "
                    <script>
                        alert('sukses');
                        document.location = 'tambah_kategori.php'
                    </script>
                    ";
                }else {
                    echo "GAGAL";
                }
            }
            ?>
        </div>
    </body>
</html>