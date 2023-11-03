<?php 
    session_start();    
    if (empty($_SESSION['nama_lengkap'])) {
        header('location:login-admin.php');
    }
    $conn = mysqli_connect('localhost','root','','uas_depok_news');
    $get = $_GET['judul'];
    $qry = "SELECT * FROM berita WHERE judul = '$get'";
    $sql = mysqli_query($conn, $qry);
    $arr = mysqli_fetch_array($sql);
    $qryKategori = "SELECT * FROM kategori WHERE id = ".$arr['id_kategori'];
    $sqlKat = mysqli_query($conn, $qryKategori);
    $arrKat = mysqli_fetch_array($sqlKat);    
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
        <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>        
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
                    <input type="hidden" name="id_berita" value="<?= $arr['id'] ?>">
                    <label>Kategori</label>
                    <br>
                    <select name="kategori" style="width:300px;height: 30px; padding-left: 10px;font-size:16px;" required>       
                        <option value="<?= $arrKat['id'] ?>"><?php echo $arrKat['tema'] ?></option>
                        <?php 
                        $tm = $arr['id_kategori'];
                        $query = "SELECT * FROM kategori WHERE status = 'aktif' AND id != '$tm'";
                        $sql = mysqli_query($conn, $query);
                        while ($data = mysqli_fetch_array($sql)) {                                                    
                        ?>
                        <option value="<?= $data['id'] ?>"><?= $data['tema'] ?></option>
                        <?php } ?>
                        <option value="">Pilih kategori</option>                       
                    </select>
                    <br><br>
                    <label for="">Judul Berita</label>
                    <br><br>
                    <input type="text" value="<?= $arr['judul'] ?>" name="judul" style="width:300px;height: 30px; padding-left: 10px;font-size:16px;" placeholder="judul berita" required>
                    <br><br>
                    <label for="">Isi berita</label>
                    <br><br>
                    <textarea rows="10" cols="100"  name="isi" placeholder="isi berita" required>
                        <?php echo $arr['isi'] ?>
                    </textarea>
                    <br><br>
                    <label for="">Sumber</label>
                    <br><br>
                    <input type="text" value="<?= $arr['sumber'] ?>" name="sumber" style="width:300px;height: 30px; padding-left: 10px;font-size:16px;" placeholder="sumber berita">
                    <br><br>
                    <label for="">Gambar</label>
                    <br><br>
                    <img id="my-img" src="../uploads/<?= $arr['gambar'] ?>" height="80">
                    <span>Gambar awal = <a href="#" onclick="window.open('../uploads/<?= $arr['gambar'] ?>')"><?php echo $arr['gambar'] ?></a></span><br><br>
                    <span>Ubah Gambar</span>
                    <input type="file" name="file">
                    <br><br>                   
                   <script>                        
                            $(document).ready(function(){                                   
                                    function readURL(input) {
                                    if (input.files && input.files[0]) {
                                        var reader = new FileReader();
                                        
                                        reader.onload = function(e) {
                                            $('#my-img').attr('src', e.target.result);
                                        }
                                        
                                        reader.readAsDataURL(input.files[0]);

                                        }
                                    }
                                $("input[name='file']").change(function() {
                                    readURL(this);
                                });  
                            });

                    </script>   
                    <label for="">Pengirim</label>
                    <br><br>
                    <input type="text" value="<?= $arr['pengirim'] ?>" style="width:300px;height: 30px; padding-left: 10px;font-size:16px;" name="pengirim" placeholder="sumber berita">
                    <br><br>
                    <label for="">Tanggal Posting</label>
                    <br><br>
                    <input type="date" value="<?= $arr['tanggal'] ?>" name="tgl" style="width:300px;height: 30px; padding-left: 10px;font-size:16px;" required>
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
            $id_berita = $_REQUEST['id_berita'];
            $kategori = $_REQUEST['kategori'];
            $judul = $_REQUEST['judul'];
            $sumber = $_REQUEST['sumber'];
            $isi = $_REQUEST['isi'];
            $pengirim = $_REQUEST['pengirim'];
            $tgl = $_REQUEST['tgl'];
            $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));       
            $check = getimagesize($_FILES["file"]["tmp_name"]);
            $defaultIMG = $arr['gambar'];
            // Allow certain file formats
            // if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
            // && $imageFileType != "gif" ) {
            //     echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
            //     $uploadOk = 0;
            // }
            
            if ($uploadOk == 0) {
                echo "Sorry, your file was not uploaded.";
                // if everything is ok, try to upload file
            } else {
                if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_file)) {                                  
                    $file = $_FILES['file']['name'];                   
                    $query = "UPDATE berita SET id_kategori = '$kategori', judul = '$judul', isi = '$isi', 
                    sumber = '$sumber', tanggal = '$tgl', pengirim = '$pengirim', gambar = '$file'
                    WHERE id = '$id_berita'";
                    $sql = mysqli_query($conn, $query);
                    if ($sql) {
                        $path = '../upload/';
                        unlink($path.$_FILES['file']['tmp_name']);
                        echo "
                        <script>
                            alert('Sukses mengubah berita');
                            document.location='entries.php';
                        </script>
                        ";   
                    } else {
                       echo "gagal bro";
                    } 
                } else {
                     $file = $_FILES['file']['name'];
                        $query = "UPDATE berita SET id_kategori = '$kategori', judul = '$judul', isi = '$isi', 
                        sumber = '$sumber', tanggal = '$tgl', pengirim = '$pengirim', gambar = '$defaultIMG'
                        WHERE id = '$id_berita'";
                        $sql = mysqli_query($conn, $query);
                        if ($sql) {
                            echo "
                            <script>
                                alert('Sukses mengubah berita');
                                document.location='entries.php';
                            </script>
                            ";   
                        } else {
                           echo "gagal bro";
                        } 
                }
            }
        }
        ?>
    </body>
</html>