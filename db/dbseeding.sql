DROP DATABASE IF EXISTS module_forest;
CREATE DATABASE module_forest;
USE module_forest;
CREATE TABLE may_like(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  imgurl TEXT NOT NULL,
  title TEXT NOT NULL,
  brand TEXT NOT NULL,
  price FLOAT NOT NULL,
  discount TEXT NOT NULL,
  shipping TEXT
);
/*
mysql -u forest < db/dbseeding.sql
*/
INSERT INTO may_like (imgurl, title, brand, price, discount, shipping)
VALUE ("https://i.etsystatic.com/12695777/c/183/145/186/10/il/86daaf/1984587142/il_680x540.1984587142_l1d1.jpg",
       "Kū Kia'i Mauna sticker, Mauna Kea", "StickerGuyUrusai", 5.99, "%0", "Free shipping eligible");