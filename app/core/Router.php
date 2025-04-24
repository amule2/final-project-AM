<?php

namespace app\core;


use app\controllers\MainController;
use app\controllers\ContactController;
use app\controllers\ProjectController;

class Router {
    public $uriArray;

    function __construct() {
        $this->uriArray = $this->routeSplit();
        $this->handleMainRoutes();
        $this->handleUserRoutes();
    }

    protected function routeSplit() {
        $removeQueryParams = strtok($_SERVER["REQUEST_URI"], '?');
        return explode("/", $removeQueryParams);
    }

    protected function handleMainRoutes() {
        if ($this->uriArray[1] === '' && $_SERVER['REQUEST_METHOD'] === 'GET') {
            $mainController = new MainController();
            $mainController->homepage();
        }
        if ($this->uriArray[1] === 'about' && $_SERVER['REQUEST_METHOD'] === 'GET') {
            $mainController = new MainController();
            $mainController->homepage();
        }
    }

    protected function handleUserRoutes() {
        if ($this->uriArray[1] === 'contact' && $_SERVER['REQUEST_METHOD'] === 'GET') {
            $contactController = new ContactController();
            $contactController->contactView();
        }
        if ($this->uriArray[1] === 'api' && $this->uriArray[2] === 'contact' && $_SERVER['REQUEST_METHOD'] === 'POST') {
            $contactController = new ContactController();
            $contactController->saveContact();
        }
        if ($this->uriArray[1] === 'projects' && $_SERVER['REQUEST_METHOD'] === 'GET') {
            $projectController = new ProjectController();
            $projectController->projectsView();
        }
        if ($this->uriArray[1] === 'api' && $this->uriArray[2] === 'projects' && $_SERVER['REQUEST_METHOD'] === 'GET') {
            $projectController = new ProjectController();
            $projectController->getProjects();
            return;
        }
    }}

