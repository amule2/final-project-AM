<?php

namespace app\models;
use app\models\Model;

class Project extends Model
{

    protected $table = 'projects';

    public function getAllProjects() {
        return $this->query("SELECT * FROM projects");;
    }

}