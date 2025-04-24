<?php

namespace app\models;

class Contact extends Model {

    protected $table = 'contacts';

    public function saveContact($inputData){
        $query = "INSERT INTO contacts (firstName, lastName, email, description) VALUES (:firstName, :lastName, :email, :description);";
        return $this->query($query, $inputData);
    }

}