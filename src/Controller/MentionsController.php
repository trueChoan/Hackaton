<?php

namespace App\Controller;

class MentionsController extends AbstractController
{
    /**
     * Display home page
     */
    public function index(): string
    {
        return $this->twig->render('Mentions/mentions.html.twig');
    }
}
