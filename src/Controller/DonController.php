<?php

namespace App\Controller;

class DonController extends AbstractController
{
    /**
     * Display home page
     */
    public function index(): string
    {
        return $this->twig->render('Don/index.html.twig');
    }
}
