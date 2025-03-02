# S2.01-BaseDeDatos-Nivel1-Ej2

## Summary: exercise description

You have been hired to design a website that allows you to order food online.

Consider the following guidelines to model what the project database would look like:
For each customer, we store a unique identifier:
First name.
Last name.
Address.
Postal code.
City.
Province.
Phone number.
The city and province data will be stored in separate tables. We know that a city belongs to a single province, and that a province can have many cities. For each city, we store a unique identifier and a name. For each province, we store a unique identifier and a name.

A person can place many orders, but a single order can only be placed by a single person. A unique identifier is stored for each order:
Date/time.
If the order is for home delivery or for pick-up in a store.
The quantity of products that have been selected of each type.
The total price.

An order can consist of one or more products.

Products can be pizzas, hamburgers and drinks. A unique identifier is stored for each product:
Name.
Description.
Image.
Price.

In the case of pizzas, there are several categories that can change their names throughout the year. A pizza can only be in one category, but a category can have many pizzas.

A unique identifier and a name are stored for each category. An order is managed by a single store and a store can manage many orders. A unique identifier is stored for each store:
Address.
Postal code.
City.
Province.

Many employees can work in a store and an employee can only work in one store. A unique identifier is stored for each employee:
First name.
Last name.
NIF.
Telephone.
If you work as a cook or delivery person. For home delivery orders, it is important to save who the delivery person is who delivers the order and the date/time of delivery.

Lists how many products in the 'Beverages' category have been sold in a specific location.
Lists how many orders a specific employee has placed.
Enviar comentarios

## Technologies Used
Requirements: MySql or MariaDb database.

Installation: Run the sql file in the database prompt.

Execution: Running the sql file will create both the database and the project tables automatically.

Deployment: Download or clone the project and use the sql file.

## Contribution
Contributions are welcome! Please follow these steps to contribute:

-Fork the repository -Create a new branch git checkout -b feature/NewFeature -Make your changes and commit them: git commit -m 'Add New Feature' -Upload the changes to your branch: git push origin feature/NewFeature -Make a pull request
