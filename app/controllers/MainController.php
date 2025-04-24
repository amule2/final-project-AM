<?php

namespace app\controllers;


class MainController extends Controller {

    public function homepage() {
        $this->returnView('./assets/views/main/homepage.html');
    }

    public function notFound() {
    }

}