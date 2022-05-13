<?php

namespace App\Controller;

class DonationController extends AbstractController
{
    public function index(): string
    {
        return $this->twig->render('Donation/index.html.twig');
    }
}
