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
            <div style="float:left;padding-left: 15px;">
                <a href="entries.php" style="padding-left:5px;">Back</a>
                <br> <br>
                <form method="POST" enctype="multipart/form-data">
                    <label>Kategori</label>
                    <br>
                    <select name="kategori" style="width:300px;height: 30px; padding-left: 10px;font-size:16px;" required>
                        <option value="">Pilih kategori</option>
                        <?php 
                        $query = "SELECT * FROM kategori WHERE status = 'aktif'";
                        $sql = mysqli_query($conn, $query);
                        while ($data = mysqli_fetch_array($sql)) {                                                    
                        ?>
                        <option value="<?= $data['id'] ?>"><?= $data['tema'] ?></option>
                        <?php } ?>
                    </select>
                    <br><br>
                    <label for="">Judul Berita</label>
                    <br><br>
                    <input type="text" name="judul" style="width:300px;height: 30px; padding-left: 10px;font-size:16px;" placeholder="judul berita" required>
                    <br><br>
                    <label for="">Isi berita</label>
                    <br><br>
                    <textarea rows="10" cols="100"  name="isi" placeholder="isi berita" required></textarea>
                    <br><br>
                    <label for="">Sumber</label>
                    <br><br>
                    <input type="text" name="sumber" style="width:300px;height: 30px; padding-left: 10px;font-size:16px;" placeholder="sumber berita">
                    <br><br>
                    <label for="">Gambar</label>
                    <br><br>
                    <input type="file" name="file" required>
                    <br><br>
                    <label for="">Pengirim</label>
                    <br><br>
                    <input type="text" style="width:300px;height: 30px; padding-left: 10px;font-size:16px;" name="pengirim" placeholder="sumber berita">
                    <br><br>
                    <label for="">Tanggal Posting</label>
                    <br><br>
                    <input type="date" name="tgl" style="width:300px;height: 30px; padding-left: 10px;font-size:16px;" required>
                    <br>
                    <br>
                    <button type="submit" style="width:100px;height: 30px; padding-left: 10px;font-size:16px;" name="simpan_berita">Simpan</button>
                </form>
            </div>
        </div>
        <?php        
        if (isset($_REQUEST['simpan_berita'])) {
            $target_dir = "../uploads/";
            $target_file = $target_dir . basename($_FILES["file"]["name"]);
            $uploadOk = 1;
            $kategori = $_REQUEST['kategori'];
            $judul = $_REQUEST['judul'];
            $sumber = $_REQUEST['sumber'];
            $isi = $_REQUEST['isi'];
            $pengirim = $_REQUEST['pengirim'];
            $tgl = $_REQUEST['tgl'];
            $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));       
            $check = getimagesize($_FILES["file"]["tmp_name"]);
            // Allow certain file formats
            if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
            && $imageFileType != "gif" ) {
                echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
                $uploadOk = 0;
            }
            
            if ($uploadOk == 0) {
                echo "Sorry, your file was not uploaded.";
                // if everything is ok, try to upload file
            } else {
                if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_file)) {
                    $file = $_FILES['file']['name'];
                    $query = "INSERT INTO berita(`id_kategori`,`judul`,`isi`,`sumber`,`gambar`,`pengirim`,`tanggal`,`status`) VALUES('$kategori','$judul','$isi','$sumber','$file','$pengirim','$tgl','aktif')";
                    $sql = mysqli_query($conn, $query);
                    if ($sql) {
                        echo "
                        <script>
                            alert('Sukses menambah berita');
                            document.location='entries.php';
                        </script>
                        ";   
                    } else {
                       echo "gagal bro";
                    } 
                } else {
                    echo "Sorry, there was an error uploading your file.";
                }
            }
        }
        ?>
    </body>
</html>