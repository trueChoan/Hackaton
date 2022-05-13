<?php

namespace App\Controller;

use App\Model\DonationManager;

class DonController extends AbstractController
{
    public function index()
    {
        $donationManager = new DonationManager();
        $phones = $donationManager->selectByPlace($_SESSION['user']['ville']);
        return $this->twig->render('Don/index.html.twig', [
            'phones' => $phones,
        ]);
    }

    public function donate()
    {
        $errors = [];
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $credentials = array_map('trim', $_POST);
            $isFunctionnal =  $credentials['is_functional'] ?? null;
            if (empty($credentials["brand"])) {
                $errors[] = "La marque doit être renseignée";
            }
            if (empty($credentials["model"])) {
                $errors[] = "Le modèle doit être renseigné";
            }
            if (empty($credentials["place"])) {
                $errors[] = "Le lieu de récupération est obligatoire";
            }
            if (empty($credentials["description"])) {
                $errors[] = "Merci de renseigner une déscription";
            }
            if (strlen($credentials['description']) < 20) {
                $errors['password'] = "Merci de faire une déscription exhaustive";
            }
            if (empty($errors) && $isFunctionnal) {
                $phoneManager = new DonationManager();
                $phoneManager->insertPhone($credentials, $_SESSION['user']['id']);
                header('location: /dons');
            }
            if (empty($errors) && !$isFunctionnal) {
                header('location: /partenaires');
            }
        }
        return $this->twig->render('Service/donation.html.twig', [
            'errors' => $errors,
        ]);
    }
}
