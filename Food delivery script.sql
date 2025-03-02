
-- `Food delivery`.Province definition

CREATE TABLE `Province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- `Food delivery`.pizza_category definition

CREATE TABLE `pizza_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- `Food delivery`.Product definition

CREATE TABLE `Product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `id_category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Product_pizza_category_FK` (`id_category`),
  CONSTRAINT `Product_pizza_category_FK` FOREIGN KEY (`id_category`) REFERENCES `pizza_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- `Food delivery`.Town definition

CREATE TABLE `Town` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id_province` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Town_Province_FK` (`id_province`),
  CONSTRAINT `Town_Province_FK` FOREIGN KEY (`id_province`) REFERENCES `Province` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- `Food delivery`.Client definition

CREATE TABLE `Client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `direction` varchar(100) NOT NULL,
  `postal_code` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `id_town` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Client_Town_FK` (`id_town`),
  CONSTRAINT `Client_Town_FK` FOREIGN KEY (`id_town`) REFERENCES `Town` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- `Food delivery`.Store definition

CREATE TABLE `Store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `direction` varchar(100) NOT NULL,
  `postal_code` varchar(100) NOT NULL,
  `id_town` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Store_Town_FK` (`id_town`),
  CONSTRAINT `Store_Town_FK` FOREIGN KEY (`id_town`) REFERENCES `Town` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- `Food delivery`.Employee definition

CREATE TABLE `Employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `id_store` int(11) DEFAULT NULL,
  `role` enum('cook','deliveryman') DEFAULT NULL,
  `nif` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Employee_Store_FK` (`id_store`),
  CONSTRAINT `Employee_Store_FK` FOREIGN KEY (`id_store`) REFERENCES `Store` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- `Food delivery`.`order` definition

CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_client` int(11) NOT NULL,
  `id_store` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `order_type` enum('home','pick up') NOT NULL,
  `total_price` decimal(10,0) NOT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `id_deliveryman` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_Client_FK` (`id_client`),
  KEY `order_Store_FK` (`id_store`),
  KEY `order_Employee_FK` (`id_deliveryman`),
  CONSTRAINT `order_Client_FK` FOREIGN KEY (`id_client`) REFERENCES `Client` (`id`),
  CONSTRAINT `order_Employee_FK` FOREIGN KEY (`id_deliveryman`) REFERENCES `Employee` (`id`),
  CONSTRAINT `order_Store_FK` FOREIGN KEY (`id_store`) REFERENCES `Store` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- `Food delivery`.order_details definition

CREATE TABLE `order_details` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  PRIMARY KEY (`id_order`,`id_product`),
  KEY `order_details_Product_FK` (`id_product`),
  CONSTRAINT `order_details_Product_FK` FOREIGN KEY (`id_product`) REFERENCES `Product` (`id`),
  CONSTRAINT `order_details_order_FK` FOREIGN KEY (`id_order`) REFERENCES `order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;