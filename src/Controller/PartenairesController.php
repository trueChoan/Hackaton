<?php

namespace App\Controller;

class PartenairesController extends AbstractController
{
    /**
     * Display home page
     */
    public function index(): string
    {
        return $this->twig->render('Partenaires/partenaires.html.twig');
    }
}
