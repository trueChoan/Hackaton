<?php

namespace App\Model;

class DonationManager extends AbstractManager
{
    public const TABLE = 'donation';

    public function insertPhone(array $phone, int $id): int
    {
        $statement = $this->pdo->prepare("INSERT INTO " . self::TABLE .
            " (`created_at`, `brand`, `model`, `description`, `is_functional`, `place`, `user_id`)
         VALUES (NOW(), :brand, :model, :description, :is_functional, :place, :user_id )");
        $statement->bindValue(':brand', $phone['brand'], \PDO::PARAM_STR);
        $statement->bindValue(':model', $phone['model'], \PDO::PARAM_STR);
        $statement->bindValue(':description', $phone['description'], \PDO::PARAM_STR);
        $statement->bindValue(':is_functional', $phone['isfunc'], \PDO::PARAM_BOOL);
        $statement->bindValue(':place', $phone['place'], \PDO::PARAM_STR);
        $statement->bindValue(':user_id', $id, \PDO::PARAM_INT);

        $statement->execute();
        return (int)$this->pdo->lastInsertId();
    }

    public function selectByPlace($ville): array
    {
        $query = 'SELECT * FROM ' . static::TABLE . " WHERE place='$ville'";


        return $this->pdo->query($query)->fetchAll();
    }
}
