<?php

namespace MvcBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;


class UserController extends Controller
{

    /**
     * @Route("/login")
     */
    public function loginAction(){

        return $this->render('@Mvc/User/login.html.twig');
    }

    /**
     * @Route("/log_and_reg")
     */
    public function logAndRegAction(){

        $days = [];
        for ($i = 0; $i <= 31; $i++) {
            $days[$i] = $i;
        }

        $months = [
            0 => 'Month', 1 => 'Jan', 2 => 'Feb',
            3 => 'Mar', 4 => 'Apr', 5 => 'May',
            6 => 'Jun', 7 => 'Jul',  8 => 'Aug',
            9 => 'Sep', 10 => 'Oct', 11 => 'Nov', 12 => 'Dec',
        ];

        $getYear = date('Y');
        $years = [];
        for ($i = $getYear; $i >= $getYear - 100; $i--){
            $years[$i] = $i;
        }
        return $this->render('@Mvc/User/log_and_reg.html.twig', [ 'days' => $days,'month' => $months, 'years' => $years ]);
    }

    /**
     * @Route("/log_out")
     */
    public function logoutAction()
    {
        // add destroy_session function
    }


    /**
     * @Route("/registration")
     */
    public function registrationAction()
    {
        $days = [];
        for ($i = 0; $i <= 31; $i++) {
            $days[$i] = $i;
        }

        $months = [
            0 => 'Month', 1 => 'Jan', 2 => 'Feb',
            3 => 'Mar', 4 => 'Apr', 5 => 'May',
            6 => 'Jun', 7 => 'Jul',  8 => 'Aug',
            9 => 'Sep', 10 => 'Oct', 11 => 'Nov', 12 => 'Dec',
        ];

        $getYear = date('Y');
        $years = [];
        for ($i = $getYear; $i >= $getYear - 100; $i--){
            $years[$i] = $i;
        }
        return $this->render('@Mvc/User/registration.html.twig', [ 'days' => $days,'month' => $months, 'years' => $years ]);
    }

    /**
     * @Route("/profile")
     */
    public function getUserAction()
    {
        $user = [
            'username' => isset($_POST['username']) ? $_POST['username'] : '',
            'password' => isset($_POST['password']) ? $_POST['password'] : '',
        ];

        $username = $user['username'];
        $password = $user['password'];

        if ($username && $password) {

            $repository = $this->getDoctrine()->getManager()->getConnection();
            $query = $repository->prepare("SELECT * FROM `users` WHERE `username` = '" . $username . "' AND `password` = '" . $password . "'");
            $query->execute();
            $result = $query->fetchAll();

        }
        $error = "Error: Username or Password was wrong";

        if ($result) {
            return $this->render('@Mvc/User/profile.html.twig',  ['res' => $result]);
        } else {
            return $this->render('@Mvc/User/login.html.twig', ['error' => $error ]);
            var_dump('ksjbcvo');
        }

    }



    /**
     * @Route("/register")
     */
    public function registerAction()
    {
        $data = [
            'f_name'  => isset($_POST['first_name']) ? $_POST['first_name'] : '',
            'l_name'  => isset($_POST['last_name']) ? $_POST['last_name'] : '',
            'email'   => isset($_POST['email']) ? $_POST['email'] : '',
            'gender'  => isset($_POST['gender']) ? $_POST['gender'] : '',
            'birthday_year' => isset($_POST['birthday_year']) ? $_POST['birthday_year'] : '',
            'birthday_month' => isset($_POST['birthday_month']) ? $_POST['birthday_month'] : '',
            'birthday_day' => isset($_POST['birthday_day']) ? $_POST['birthday_day'] : '',
            'username' => isset($_POST['username']) ? $_POST['username'] : '',
            'password' => isset($_POST['password']) ? $_POST['password'] : '',
        ];

        if (!empty($data)) {

            $f_name = $data['f_name'];
            $l_name = $data['l_name'];
            $email = $data['email'];
            $year = $data['birthday_year'] . "-" . $data['birthday_month'] . "-" . $data['birthday_day'];
            $gender = $data['gender'];
            $username = $data['username'];
            $password = $data['password'];


            // register to database
            if ($username && $password) {

                $repository = $this->getDoctrine()->getManager()->getConnection();

                $sql = $repository->prepare("INSERT INTO `users` ( `firstname`, `lastname`, `email`, `birthday`, `gender`, `username`, `password`) 
                          VALUES ( '$f_name', '$l_name', '$email', '$year', '$gender', '$username', '$password' )");

                $result = $sql->execute();

                if ($result) {
                    $success = "You are successfully register Please enter your data again,so do not forget your login and password";
                    return $this->render('@Mvc/User/login.html.twig', ['success' => $success]);
                } else {
                    $error = "Please fill in all the fields";
                    echo 'Error: You are not registered';
                }

            }
        }else{
            $error = "Please fill in all the fields";
            return $this->render('@Mvc/User/log_and_reg.html.twig', [ 'error_fill' => $error ]);
        }
    }

    /**
     * @Route("/restore")
     */
    public function restoreAccountAction(){
        return $this->render('@Mvc/User/restoreAccount.html.twig');
    }

    /**
     * @Route("/settings")
     */
    public function settings(){
        return $this->render('@Mvc/User/settings.html.twig');
    }

}
