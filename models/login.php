<?php

class LogIn
{
    private $conn;
    private $res;
    private $classResponse;
    public function __construct(Connectiontodb $db)
    {
        $this->conn = $db->connect();
        $this->classResponse = new Response();
    }

    public function sendData(?array $data = [], $token = '')
    {
        $userTypes = ['USER', 'ADMIN'];
        if (!isset($data['email']) || $data['email'] == null || !filter_var(trim($data['email']), FILTER_VALIDATE_EMAIL)) {
            echo $this->classResponse->getResponse(0, 'Enter validate Email', null);
        } else if (!isset($data['password']) || $data['password'] == null) {
            echo $this->classResponse->getResponse(0, 'Enter password', null);
        } else if (!isset($data['type']) || empty($data['type']) || !in_array(strtoupper($data['type']), $userTypes)) {
            echo $this->classResponse->getResponse(0, 'Enter user type (User)', null);
        } else {
            $uemail = trim($data['email']);
            $password = md5(trim($data['password']));
            $userType = '';
            $userType = strip_tags(trim($data['type']));
            $checkUserDataQuery = mysqli_query($this->conn, "SELECT * FROM users WHERE email = '$uemail' AND usertype = '$userType'");
            $checkUserLoginQuery = mysqli_query($this->conn, "SELECT * FROM users WHERE email = '$uemail' AND pass = '$password' AND usertype = '$userType'");
            if (mysqli_num_rows($checkUserDataQuery) > 0) {
                if (mysqli_num_rows($checkUserLoginQuery) > 0) {
                    $jwtKey = new GetToken;
                    $jwtKey->processPayload($uemail);
                    echo $this->classResponse->getResponse(1, 'success', $jwtKey->exportAccessToken());
                } else {
                    echo $this->classResponse->getResponse(0, 'Wrong email or password', null);
                }
            } else {
                echo $this->classResponse->getResponse(0, 'Email does not exist, you can create account if you do not have one', null);
            }
        }
    }
}
