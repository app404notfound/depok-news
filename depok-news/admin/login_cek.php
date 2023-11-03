<?php

session_start();
$conn = mysqli_connect('localhost','root','','uas_depok_news');

$email      = htmlspecialchars(mysqli_real_escape_string($conn, $_REQUEST['email']), ENT_QUOTES);
$password   = htmlspecialchars(mysqli_real_escape_string($conn, $_REQUEST['password']), ENT_QUOTES);

$user_check = mysqli_query($conn, "SELECT * FROM admin WHERE email = '$email'");
$user_valid = mysqli_fetch_array($user_check);

    if ($user_valid) {
        
        if ($password == $user_valid['password']) {
            
            $_SESSION['nama_lengkap'] = $user_valid['nama_lengkap'];

            header('location:index.php');

        } else {
            echo "
            <script>
                alert('Wrong password');
                document.location = 'login-admin.php';
            </script>
            ";
        }

    } else {
        echo "
        <script>
            alert('Email not found');
            document.location = 'login-admin.php';
        </script>
        ";
    }
?>