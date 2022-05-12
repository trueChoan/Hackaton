<?php

namespace App\Model;

class UserManager extends AbstractManager
{
    public const TABLE = 'user';

    public function insert(array $credentials): int
    {
        $statement = $this->pdo->prepare("INSERT INTO " . static::TABLE .
            " (email, password, pseudo, tel, cp, adresse, nom, prenom, ville)
        VALUES (:email, :password, :pseudo, :tel, :cp, :adresse, :nom, :prenom,:ville )");
        $statement->bindValue(':email', $credentials['email']);
        $statement->bindValue(':password', password_hash($credentials['password'], PASSWORD_DEFAULT));
        $statement->bindValue(':pseudo', $credentials['pseudo']);
        $statement->bindValue(':tel', $credentials['telephone']);
        $statement->bindValue(':cp', $credentials['codepostale']);
        $statement->bindValue(':ville', $credentials['ville']);
        $statement->bindValue(':adresse', $credentials['adresse']);
        $statement->bindValue(':nom', $credentials['nom']);
        $statement->bindValue(':prenom', $credentials['prenom']);


        $statement->execute();
        return (int)$this->pdo->lastInsertId();
    }

    public function selectByEmail(string $email): array|false
    {
        $statement = $this->pdo->prepare("SELECT * FROM " . static::TABLE . " WHERE email=:email");
        $statement->bindValue('email', $email, \PDO::PARAM_STR);
        $statement->execute();

        return $statement->fetch();
    }
}
