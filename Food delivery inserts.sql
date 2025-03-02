INSERT INTO `Food delivery`.Client
(id, name, surname, direction, postal_code, telephone, id_town)
VALUES(1, 'Pepito', 'Marco', 'las delicias', '08029', '123456765', 1);
INSERT INTO `Food delivery`.Client
(id, name, surname, direction, postal_code, telephone, id_town)
VALUES(2, 'Juana', 'Pico', 'María Juana 6', '08934', '654323455', 2);
INSERT INTO `Food delivery`.Client
(id, name, surname, direction, postal_code, telephone, id_town)
VALUES(3, 'Tomasa', 'Lala', 'La rambla', '92665', '987654567', 2);
INSERT INTO `Food delivery`.Client
(id, name, surname, direction, postal_code, telephone, id_town)
VALUES(4, 'Agusta', 'Pan', 'Passeig de Gracia 3', '08029', '876543456', 3);
INSERT INTO `Food delivery`.Client
(id, name, surname, direction, postal_code, telephone, id_town)
VALUES(5, 'Pepito', 'Marco', 'Las tordillas 34', '12345', '876567876', 3);
INSERT INTO `Food delivery`.Client
(id, name, surname, direction, postal_code, telephone, id_town)
VALUES(6, 'Agusta', 'Pan', 'Rossello 45', '12345', '876545677', 4);
INSERT INTO `Food delivery`.Client
(id, name, surname, direction, postal_code, telephone, id_town)
VALUES(7, 'Marc', 'Markie', 'París 34', '08003', '098789876', 5);
INSERT INTO `Food delivery`.Client
(id, name, surname, direction, postal_code, telephone, id_town)
VALUES(8, 'Jose', 'Josie', 'Hola Hola 4', '08004', '987654567', 5);
INSERT INTO `Food delivery`.Client
(id, name, surname, direction, postal_code, telephone, id_town)
VALUES(9, 'Pau', 'Paulete', 'Tucucuuu', '08005', '987678765', 1);
INSERT INTO `Food delivery`.Client
(id, name, surname, direction, postal_code, telephone, id_town)
VALUES(10, 'Paula', 'Paola', 'Hola Hola 2', '08006', '876567865', 1);


INSERT INTO `Food delivery`.Employee
(id, name, surname, telephone, id_store, `role`, nif)
VALUES(1, 'Juan', 'Taronja', '75643212345', 1, 'cook', 'Y987654J');
INSERT INTO `Food delivery`.Employee
(id, name, surname, telephone, id_store, `role`, nif)
VALUES(2, 'María', 'Josefalia', '65342345655', 2, 'deliveryman', 'Y234567K');
INSERT INTO `Food delivery`.Employee
(id, name, surname, telephone, id_store, `role`, nif)
VALUES(3, 'Lea', 'Casas', '78653423536', 5, 'cook', 'Y345678F');
INSERT INTO `Food delivery`.Employee
(id, name, surname, telephone, id_store, `role`, nif)
VALUES(4, 'Marc', 'Caseta', '76543345676', 5, 'deliveryman', 'Y987654D');
INSERT INTO `Food delivery`.Employee
(id, name, surname, telephone, id_store, `role`, nif)
VALUES(5, 'Mia', 'MIco', '67453356765', 2, 'deliveryman', 'Y865356J');


INSERT INTO `Food delivery`.Product
(id, name, description, image, price, id_category)
VALUES(1, 'Hamburguesa', 'Bacon', NULL, 6, NULL);
INSERT INTO `Food delivery`.Product
(id, name, description, image, price, id_category)
VALUES(2, 'Bebida', 'Coca cola', NULL, 3, NULL);
INSERT INTO `Food delivery`.Product
(id, name, description, image, price, id_category)
VALUES(3, 'Hamburguesa', 'Veggie', NULL, 11, NULL);
INSERT INTO `Food delivery`.Product
(id, name, description, image, price, id_category)
VALUES(4, 'Bebida ', 'nestea', NULL, 2, NULL);
INSERT INTO `Food delivery`.Product
(id, name, description, image, price, id_category)
VALUES(5, 'Pizza', '4 quesos', NULL, 12, 2);
INSERT INTO `Food delivery`.Product
(id, name, description, image, price, id_category)
VALUES(6, 'Pizza', 'Margarita', NULL, 9, 1);


INSERT INTO `Food delivery`.Province
(id, name)
VALUES(1, 'Barcelona');
INSERT INTO `Food delivery`.Province
(id, name)
VALUES(2, 'Madrid');
INSERT INTO `Food delivery`.Province
(id, name)
VALUES(3, 'LLeida');
INSERT INTO `Food delivery`.Province
(id, name)
VALUES(4, 'Terrassa');
INSERT INTO `Food delivery`.Province
(id, name)
VALUES(5, 'Tordera');
INSERT INTO `Food delivery`.Province
(id, name)
VALUES(6, 'Badalona');
INSERT INTO `Food delivery`.Province
(id, name)
VALUES(7, 'Ripol');
INSERT INTO `Food delivery`.Province
(id, name)
VALUES(8, 'Rupit');
INSERT INTO `Food delivery`.Province
(id, name)
VALUES(9, 'Valenciaga');
INSERT INTO `Food delivery`.Province
(id, name)
VALUES(10, 'Cordoba');
INSERT INTO `Food delivery`.Province
(id, name)
VALUES(11, 'Tarragona');
INSERT INTO `Food delivery`.Province
(id, name)
VALUES(12, 'Valencia');
INSERT INTO `Food delivery`.Province
(id, name)
VALUES(13, 'Vic');
INSERT INTO `Food delivery`.Province
(id, name)
VALUES(14, 'Pipa');


INSERT INTO `Food delivery`.Store
(id, direction, postal_code, id_town)
VALUES(1, 'las marías 123', '08029', 1);
INSERT INTO `Food delivery`.Store
(id, direction, postal_code, id_town)
VALUES(2, 'Hola Hola 3', '08033', 2);
INSERT INTO `Food delivery`.Store
(id, direction, postal_code, id_town)
VALUES(5, 'Calle falsa', '12345', 3);


INSERT INTO `Food delivery`.Town
(id, name, id_province)
VALUES(1, 'Aitona', 1);
INSERT INTO `Food delivery`.Town
(id, name, id_province)
VALUES(2, 'Barcelona', 2);
INSERT INTO `Food delivery`.Town
(id, name, id_province)
VALUES(3, 'Madrid', 3);
INSERT INTO `Food delivery`.Town
(id, name, id_province)
VALUES(4, 'Malaga', 2);
INSERT INTO `Food delivery`.Town
(id, name, id_province)
VALUES(5, 'Valencia', 1);


INSERT INTO `Food delivery`.`order`
(id, id_client, id_store, date_time, order_type, total_price, delivery_date, id_deliveryman)
VALUES(1, 1, 1, '2024-03-15 22:57:00.000', 'home', 28, '2024-03-15 23:57:00.000', 2);
INSERT INTO `Food delivery`.`order`
(id, id_client, id_store, date_time, order_type, total_price, delivery_date, id_deliveryman)
VALUES(2, 2, 1, '2024-04-10 21:35:00.000', 'home', 26, '2024-04-10 22:35:00.000', 5);
INSERT INTO `Food delivery`.`order`
(id, id_client, id_store, date_time, order_type, total_price, delivery_date, id_deliveryman)
VALUES(3, 3, 1, '2024-03-15 22:57:00.000', 'pick up', 28, NULL, NULL);
INSERT INTO `Food delivery`.`order`
(id, id_client, id_store, date_time, order_type, total_price, delivery_date, id_deliveryman)
VALUES(4, 4, 1, '2024-04-10 21:35:00.000', 'pick up', 26, NULL, NULL);
INSERT INTO `Food delivery`.`order`
(id, id_client, id_store, date_time, order_type, total_price, delivery_date, id_deliveryman)
VALUES(5, 1, 1, '2024-06-15 22:57:00.000', 'home', 28, '2024-03-15 23:57:00.000', 1);
INSERT INTO `Food delivery`.`order`
(id, id_client, id_store, date_time, order_type, total_price, delivery_date, id_deliveryman)
VALUES(6, 2, 1, '2024-02-09 21:35:00.000', 'home', 26, '2024-04-10 22:35:00.000', 5);


INSERT INTO `Food delivery`.order_details
(id_order, amount, id_product)
VALUES(1, 2, 1);
INSERT INTO `Food delivery`.order_details
(id_order, amount, id_product)
VALUES(2, 5, 2);
INSERT INTO `Food delivery`.order_details
(id_order, amount, id_product)
VALUES(3, 3, 3);
INSERT INTO `Food delivery`.order_details
(id_order, amount, id_product)
VALUES(4, 2, 1);
INSERT INTO `Food delivery`.order_details
(id_order, amount, id_product)
VALUES(5, 4, 2);
INSERT INTO `Food delivery`.order_details
(id_order, amount, id_product)
VALUES(6, 5, 3);


INSERT INTO `Food delivery`.pizza_category
(id, name)
VALUES(1, 'Margarita');
INSERT INTO `Food delivery`.pizza_category
(id, name)
VALUES(2, '4 quesos');
INSERT INTO `Food delivery`.pizza_category
(id, name)
VALUES(3, 'Piña');
INSERT INTO `Food delivery`.pizza_category
(id, name)
VALUES(4, 'explosiva');
INSERT INTO `Food delivery`.pizza_category
(id, name)
VALUES(5, 'Salchicha');
INSERT INTO `Food delivery`.pizza_category
(id, name)
VALUES(6, 'Huevo y jamón');


