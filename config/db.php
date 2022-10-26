<?php
class Connectiontodb
{
    public function connect()
    {
        return mysqli_connect('fdb32.awardspace.net', '4169416_truth', 'mohamedreda012', '4169416_truth');
    }
}
