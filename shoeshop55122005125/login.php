<?php
session_start();

$input_uname = $_POST['username'];
$input_pwd = $_POST['userpassword'];
$input_captcha = $_POST['captcha'];


/* $correct_uname = $_GET['yhm'];
$correct_pwd = $_GET['yhmm']; */

$correct_uname = $_SESSION['yhm'];
$correct_pwd = $_SESSION['yhmm'];
$correct_captcha = $_SESSION['correct_captcha'];

/* echo $input_uname;
echo "<br>";
echo $input_pwd;
echo "<br>";
echo $correct_uname;
echo "<br>";
echo $correct_pwd;
echo "<br>"; */
if($input_captcha == $correct_captcha){
    
    if($input_uname===$correct_uname){

        if($input_pwd===$correct_pwd){

            // echo "登录成功";
            // var_dump(isset($_POST['remember']));
            if(isset($_POST['remember'])){
                setcookie('auth',base64_encode($correct_uname).':'.base64_encode($correct_pwd),time()+30*24*60*60);
            }
            else{
                setcookie('auth',base64_encode($correct_uname).':'.base64_encode($correct_pwd),time()-1);
            }
    
            // header('location:index.php');
        }
        else{
            echo "密码不正确";
        }
    }
    else{
        echo "用户名不正确";
    }    
}else{
    echo '验证码错误';
}

