<?php

namespace Mvc\Controllers;

use Config\Controller;


class PageController extends Controller
{
    public function base()
    {
        echo $this->twig->render('Page/home.html.twig');
    }

    public function parting()
    {
        echo $this->twig->render('Page/parting.html.twig');
    }
}