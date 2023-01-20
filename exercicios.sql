--  lista o número de pedidos enviados por cada remetente
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;


--renomeando um banco de dados
RENAME TABLE BancoDeDados.nome_da_tabela to novoNomeBanco.nome_da_tabela;



-- criando uma tabela 
CREATE TABLE `new_schema`.`testes_no_python` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `testes_no_pythoncol` VARCHAR(45) NOT NULL,
  `testes_no_pythoncol1` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;



-- colocando uma fk no coluna existente
ALTER TABLE nomedatabela ADD FOREIGN KEY (coluna) REFERENCES nomedaoutratabela (coluna_referente);



-- alterando a PRIMARY KEY :
ALTER TABLE `vendas_teste`.`vendas_mes` 
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`);



-- adicionando o auto incremento :
alter table `vendas_mes` change `id` `id` int(4) not null auto_increment ;


-- selecionado dados aparti de uma coluna com NULL
select id_item , id_nf , cod_prod, valor_unit  from vendas_mes
where `desconto(%)` is null  ;



-- colocando equações na coluna 
UPDATE `vendas_teste`.`vendas_mes` SET `valor_vendido` = `valor_unit` - (`valor_unit`*(`desconto(%)`/100)) WHERE (`id` = '2');



--  lista o número de clientes em cada país, classificados de cima para baixo
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;




--  lista o número de pedidos enviados por cada remetente
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;


