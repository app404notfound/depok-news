<?php 
    session_start();
    if (isset($_SESSION['nama_lengkap'])) {
        header('location:index.php');
    }
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Depok News | Admin</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">   
        <link rel="stylesheet" href="../asset/style.css"> 
        <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>            
        <link rel="icon" href="https://www.pinclipart.com/picdir/middle/454-4545041_newspaper-png-icon-news-paper-logo-icon-clipart.png">
    </head>
    <body style="font-family:'Roboto'; background:#6B5B95;">
        <div class="center">
            <form method="POST" autocomplete="off" action="login_cek.php" onsubmit="return validasi(this)">                            
                <h4 style="text-align:center;">Login Depok News</h4>
                <hr>
                <div>
                    <label for="email">Email</label>
                    <input type="email" class="form-input" placeholder="Email Address" name="email" id="email">
                </div>
                <br>
                <div>
                    <label for="password">Password</label>
                    <input type="password" class="form-input" placeholder="******" id="password" name="password">
                </div>
                <hr>
                <button type="submit" style="float:right;width:100px;height:30px;cursor:pointer;">Login</button>
                <br>
                <br>
            </form>
        </div>
    </body>
    <script>
        function validasi(form){
            if(form.email.value == ""){
                alert('Email tidak boleh kosong!');
                form.email.focus();
                return (false);
            } else if(form.password.value == ""){
                alert('Password tidak boleh kosong!');
                form.password.focus();
                return (false);
            }
            return (true);
        }
    </script>
</html>