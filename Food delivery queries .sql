Lists how many products in the 'Beverages' category have been sold in a specific location.

SELECT count(*) Total from Product p 
inner join order_details od on p.id = od.id_product 
inner join `order` o on o.id = od.id_order 
inner join Store s on s.id = o.id_store 
inner join Town t on t.id = s.id_town 
WHERE p.name = 'Bebida';


Lists how many orders a specific employee has placed.

SELECT count(*) from Employee e
inner join `order` o on e.id = o.id_deliveryman
where e.id = 5;



