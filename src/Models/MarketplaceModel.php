<?php

namespace Mvc\Models;

use Config\Model;
use PDO;

class MarketplaceModel extends Model
{
    public function eachProducts()
    {
        $statement = $this->pdo->prepare('SELECT * FROM `products`');
        $statement->execute();

        return $statement->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getProductByID($id) {
        $statement = $this->pdo->prepare('SELECT * FROM `products` WHERE `id` = :id');
        $statement->execute([
            'id' => $id
        ]);

        return $statement->fetch(PDO::FETCH_ASSOC);
    }

    public function insertProduct($name, $category, $description, $price, $image1, $image2, $image3)
    {
        $statement = $this->pdo->prepare('INSERT INTO `products` (`name`, `category`, `description`, `price`,  `image1`, `image2`, `image3`) VALUES (:name, :category, :description, :price, :image1, :image2, :image3)');
        $statement->execute([
            'name' => $name,
            'category' => $category,
            'description' => $description,
            'price' => $price,
            'image1' => $image1,
            'image2' => $image2,
            'image3' => $image3,
        ]);
    }

    public function deleteProduct($productID)
    {
        $statement = $this->pdo->prepare('DELETE FROM `products` WHERE id = :id');
        $statement->execute([
            'id' => $productID
        ]);
    }

    public function eachCategories()
    {
        $statement = $this->pdo->prepare('SELECT * FROM `categories`');
        $statement->execute();

        return $statement->fetchAll(PDO::FETCH_ASSOC);
    }

    public function insertCategory($name)
    {
        $statement = $this->pdo->prepare('INSERT INTO `categories` (`name`) VALUES (:name)');
        $statement->execute([
            'name' => $name,
        ]);
    }

    public function deleteCategory($categoryID)
    {
        $statement = $this->pdo->prepare('DELETE FROM `categories` WHERE id = :id');
        $statement->execute([
            'id' => $categoryID
        ]);
    }

    public function addToCart($userID, $productID)
    {
        $statement = $this->pdo->prepare('INSERT INTO `users_cart` (`user_id`, `product_id`) VALUES (:user_id, :product_id)');
        $statement->execute([
            'user_id' => $userID,
            'product_id' => $productID
        ]);
    }

    public function deleteFromCart($userID, $productID)
    {
        $statement = $this->pdo->prepare('DELETE FROM `users_cart` WHERE product_id = :product_id AND user_id = :user_id LIMIT 1');
        $statement->execute([
            'user_id' => $userID,
            'product_id' => $productID
        ]);
    }

    public function deleteCart($userID)
    {
        $statement = $this->pdo->prepare('DELETE FROM `users_cart` WHERE user_id = :user_id');
        $statement->execute([
            'user_id' => $userID,
        ]);
    }

    public function eachProductFromCart($userID)
    {
        $statement = $this->pdo->prepare('SELECT products.id, name, category, description, price, image1 FROM `users_cart` LEFT JOIN products ON users_cart.product_id = products.id WHERE user_id = :user_id');
        $statement->execute([
            'user_id' => $userID,
        ]);

        return $statement->fetchAll(PDO::FETCH_ASSOC);
    }

    public function insertProductCommand($userID, $productID, $date)
    {
        $statement = $this->pdo->prepare('INSERT INTO `commands` (`user_id`, `product_id`, `commandDate`) VALUES (:user_id, :product_id, :date)');
        $statement->execute([
            'user_id' => $userID,
            'product_id' => $productID,
            'date' => $date
        ]);
    }

    public function eachCommands($userID)
    {
        $statement = $this->pdo->prepare('SELECT * FROM `commands` LEFT JOIN products ON products.id = commands.product_id WHERE user_id = :user_id');
        $statement->execute([
            'user_id' => $userID,
        ]);

        return $statement->fetchAll(PDO::FETCH_ASSOC);
    }
}