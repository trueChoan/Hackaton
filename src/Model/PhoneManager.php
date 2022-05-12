<?php

namespace App\Model;


class PhoneManager extends AbstractManager
{
    public const TABLE = 'donation';

    public function insertPhone(array $phone): int
    {
        $statement = $this->pdo->prepare("INSERT INTO " . self::TABLE .
         " (`brand`, `model`, `description`, `place`, NOW(), `is_functional`, `user_id`,)
         VALUES (:brand, :model, :description, :place, :created_at, :is_functional, :user_id )");
        $statement->bindValue('brand', $phone['brand'], \PDO::PARAM_STR);
        $statement->bindValue(':model', $phone['model'], \PDO::PARAM_STR);
        $statement->bindValue(':place', $phone['place'], \PDO::PARAM_STR);
        $statement->bindValue(':description', $phone['description'], \PDO::PARAM_STR);
        $statement->bindValue(':is_functional', $phone['isfunc'], \PDO::PARAM_BOOL);
        $statement->bindValue(':user_id', $phone['user_id'], \PDO::PARAM_INT);

        $statement->execute();
        return (int)$this->pdo->lastInsertId();
    }
}
