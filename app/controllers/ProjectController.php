<?php

namespace app\controllers;

use app\models\Project;

class ProjectController extends Controller {

    public function getProjects() {
        $projectModel = new Project();
        $projects = $projectModel->findAll();
        $this-> returnJSON($projects);
        exit();
    }


    public function projectsView() {
        $this->returnView('./assets/views/main/projects.html');
    }



}
