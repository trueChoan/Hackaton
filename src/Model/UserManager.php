<?php

namespace App\Model;

class UserManager extends AbstractManager
{
    public const TABLE = 'user';

    public function insert(array $credentials): int
    {
        $statement = $this->pdo->prepare("INSERT INTO " . static::TABLE .
            " (email, password, nickname)
        VALUES (:email, :password, :nickname)");
        $statement->bindValue(':email', $credentials['email']);
        $statement->bindValue(':password', password_hash($credentials['password'], PASSWORD_DEFAULT));
        $statement->bindValue(':nickname', $credentials['nickname']);
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
