-- Universidade do Minho
-- Mestrado Integrado em Engenharia Informática
-- Unidade Curricular de Bases de Dados
-- 2018/2019
-- Caso de Estudo: "DistribuMinho" 
-- Povoamento parcial da base de dados.
-- MieiMasters

-- Base de dados de trabalho
USE DistribuMinho;

-- Povoamento da tabela "Armazem"
INSERT INTO Armazem(NrArmazem, NrCamioes, rua, cidade)
	VALUES 
		(1, 1, 'Rua de Vilarinho', 'Viana do Castelo'),
		(2, 2, 'Rua Poço da Prata', 'Braga'),
		(3, 2, 'Rua do Robalo', 'Guimarães');
-- SELECT * FROM Armazem;

-- Povoamento da tabela "Tipo_Cliente"
INSERT INTO Tipo_Cliente(IdTipoCliente, Designacao)
	VALUES 
		(1, 'Supermercado'),
		(2, 'Minimercado'),
		(3, 'Bar'),
        (4, 'Restaurante'),
        (5, 'Café'),
        (6, 'Talho'),
        (7, 'Escola'),
        (8, 'Universidade');
-- SELECT * FROM Tipo_Cliente;

-- Povoamento da tabela "Cliente"
INSERT INTO Cliente(NIF, nome, rua, cidade, endereco, tipo)
	VALUES 
		(123764376, 'Mercado Acácia', 'Rua Terroeiras', 'Vila Real','acaciaOnTheStreet@gmail.com', 2),
        (198773402, 'Mercados Bras', 'Rua Luís de Camões', 'Viana do castelo','mercadosbras@gmail.com', 2),
		(240938504, 'Continente Shopping Guimarães', 'Rua Professor Abel Salazar', 'Guimarães', 'continente_guima@gmail.com', 1),
		(332498233, 'Continente Caldelas', 'Rua Monte Além de Cima', 'Guimarães', 'continente_taipas@gmail.com', 1),
        (497453322, 'Pingo Doce BP', 'Rua Padre Roberto Maciel', 'Braga', 'pingo_BP@gmail.com', 1),
        (533498234, 'Bolama Ponte', 'Rua do Estremadouro', 'Guimarães', 'bolama_ponte@gmail.com', 1),
        (683765253, 'Restaurante Café Sport', 'Rua dos Manjovos', 'Viana do Castelo', 'rcs_viana@gmail.com', 4),
        (683765254, 'Restaurante Sabor da Villa', 'Rua 5 de Outubro', 'Viana do Castelo', 'rsv_viana@gmail.com', 4),
        (732349374, 'Café Varandas', 'Rua de Olivença', 'Viana do Castelo', 'cafe_varandas@gmail.com', 5),
        (173490098, 'DOM QUIXOTE', 'Rua das Escolas Primárias', 'Guimarães', null, 5),
        (874630143, 'Escola Secundária de Carlos Amarante', 'Rua Beato Miguel de Carvalho', 'Braga', 'esca@gmail.com', 7),
        (163489050, 'Escola Secundária Caldas das Taipas', 'Rua Professor Manuel José Pereira', 'Guimarães', 'esct@gmail.com', 7),
        (987473492, 'Universidade do Minho Gualtar', 'Rua da Universidade', 'Braga', 'uminho_GUALT@gmail.com', 8),
        (156349900, 'Universidade do Minho Azurém', 'N207-4', 'Guimarães', 'uminho_AZUR@gmail.com', 8),
        (112346334, 'Talho Tourão Brito', 'Rua S.João Baptista', 'Guimarães', null, 6),
        (183497734, 'Talho Três Silvas LDA', 'Rua Vasconcelos e Castro', 'Vila Nova de Famalicão', null, 6),
        (132353289, 'Pachá - Oper Ofir', 'Avenida Fontes Pereira de Melo', 'Porto', null, 3),
        (149852456, 'Forte São João', 'Avenida do Brasil', 'Vila do Conde', null, 3);
-- SELECT * FROM Cliente;

-- Povoamento da tabela "Tipo_Produto"
INSERT INTO Tipo_Produto
	(IdTipoProduto, Designacao)
	VALUES
		(1,'Charcutaria'),
		(2,'Congelados'),
		(3,'Bebidas'),
		(4,'Peixaria'),
		(5,'Talho');
-- SELECT * FROM Tipo_Produto;

-- Povoamento da tabela "Produto"
INSERT INTO Produto
	(idProduto, nome, preco, tipo)
	VALUES
		(1,'Fiambre Peito Frango - El Pozo', 15.99, 1), -- por kg
		(2,'Fiambre Peito Frango - Campofrio', 9.59, 1),  -- por kg (promoçãozinha do Jumbo ;-))
		(3,'Fiambre Peito Frango - Nobre', 11.99, 1), -- por kg
		(4,'Fiambre Da Perna Extra - Sicasal', 10.99, 1), -- por kg
		(5,'Fiambre Da Perna Extra - Izidoro', 11.99, 1),  -- por kg
		(6,'Fiambre Da Perna Extra - Nobre', 11.99, 1), -- por kg
		(7,'Queijo Flamengo - Terra Nostra', 6.71, 1), -- por kg
		(8,'Queijo Flamengo - Agros', 6.99, 1), -- por kg
		(9,'Queijo Flamengo - Primor', 6.95, 1), -- por kg
		(10,'Bacalhau Demolhado Desfiado - Auchan', 7.96, 2), -- por kg
		(11,'Medalhoes de Pescada - Auchan', 6.98, 2), -- por kg
		(12,'Delicias do Mar - Auchan', 3.92, 2), -- por kg
		(13,'Batata Frita - Auchan', 1.15, 2), -- por kg
		(14,'Cogumelos Laminados - Auchan', 1.89, 2), -- por kg
		(15,'Cebola Picada - Auchan', 1.45, 2), -- por kg
		(16,'Crepes com Chocolate - Auchan', 5.54, 2), -- por kg
		(17,'Agua Mineral - Luso', 0.27, 3), -- por L
		(18,'Agua Mineral - Monchique', 0.33, 3), -- por L
		(19,'Agua Com Gás - Pedras Salgadas', 1.64, 3), -- por L
		(20,'Agua Com Gás - Carvalhelhos', 1.12, 3), -- por L
		(21,'Whisky Velho 18 anos - Chivas Regal', 92.13, 3), -- por L
		(22,'Whisky Velho 12 anos - Chivas Regal', 41.41, 3), -- por L
		(23,'Whisky Velho 15 anos - J&B', 34.13, 3), -- por L
		(24,'Whisky Velho 12 anos - Ballantines', 28.27, 3), -- por L
		(25,'Gin - Hendricks', 42.84, 3), -- por L
		(26,'Gin - Bulldog', 40.70, 3), -- por L
		(27,'Gin Bombay - Sapphire East', 36.93, 3), -- por L
		(28,'Cerveja - Super Bock', 2.33, 3), -- por L
		(29,'Cerveja - Sagres', 2.15, 3), -- por L
		(30,'Cerveja - Carlsberg', 2.75, 3), -- por L
		(31,'Sidra - Somerbsy', 4.30, 3), -- por L
		(32,'Champagne Brut - Möet & Chandon', 54.65, 3), -- por L
		(33,'Champagne Rosé Brut - Möet & Chandon', 57.32, 3), -- por L
		(34,'Champagne Nectar Imperial Brut - Möet & Chandon', 71.72, 3), -- por L
		(35,'Champagne Brut - Mumm', 51.67, 3), -- por L
		(36,'Ice Tea', 1.15, 3), -- por L
		(37,'Coca Cola - Refrigerante Com Gás', 1.08, 3), -- por L
		(38,'Sumol - Refrigerante Com Gás', 0.94, 3), -- por L
		(39,'Vinho Tinto - Quinta do Crasto', 19.99, 3), -- por L
		(40,'Vinho Tinto - Duas Quintas', 14.92, 3), -- por L
		(41,'Vinho Tinto - Piano', 14.65, 3), -- por L
		(42,'Vinho Branco - Quinta do Carmo', 10.92, 3), -- por L
		(43,'Vinho Branco - Chaminé', 7.59, 3), -- por L
		(44,'Bacalhau Crescido Islandia Seco', 9.99, 4), -- por kg
		(45,'Dourada Média Fresca', 6.99, 4), -- por kg
		(46,'Salmão Fresco', 9.67, 4), -- por kg
		(47,'Faneca Fresca', 4.99, 4), -- por kg
		(48,'Pescada Fresca', 5.99, 4), -- por kg
		(49,'Pernas de Frango', 5.49, 5), -- por kg
		(50,'Bife de Frango', 7.89, 5), -- por kg
		(51,'Vitela Bife Lombo', 17.95, 5), -- por kg
		(52,'Bife Novilho', 7.49, 5), -- por kg
		(53,'Perna Perú', 3.75, 5), -- por kg
		(54,'Picanha de Bovino', 7.85, 5), -- por kg
		(55,'Bife de Perú', 6.48, 5); -- por kg
-- SELECT * FROM Produto;

-- Povoamento da tabela "Contacto"
INSERT INTO Contacto
	(contacto, Cliente_NIF)
	VALUES 
		(259672019, 123764376),
		(916382937, 198773402),
        (258909345, 198773402),
		(253678354, 240938504),
		(253984763, 332498233),
        (253909873, 497453322),
        (253409909, 533498234),
        (258765890, 683765253),
        (934658392, 683765254),
        (258707767, 683765254),
        (258787878, 732349374),
        (253123000, 173490098),
        (965793729, 874630143),
        (253618001, 874630143),
        (253479890, 163489050),
        (253478965, 987473492),
        (253111839, 156349900),
        (253465980, 112346334),
        (252467809, 183497734),
        (225040569, 132353289),
        (916784726, 149852456),
        (252404410, 149852456);
-- SELECT * FROM Contacto;

-- Povoamento da tabela "VeiculoTransportador"
INSERT INTO VeiculoTransportador
	(matricula, marca, NrKmsRealizados, anoFabrico, dataInspecao, kmsMaximos, dataRenovacaoSeguro, dataRenovacaoImpostoSelo, condutor, NrArmazem)
	VALUES 
		('00-PR-05', 'Mercedes',120000,'2016','2018/11/24',20,'2018/12/24','2018/12/24','António Manuel',1),
		('20-VR-86', 'Volvo',40000,'2017','2018/11/30',30,'2019/11/04','2019/11/04','José António',2),
		('20-VR-87', 'Volvo',70000,'2017','2018/11/30',100,'2019/11/04','2019/11/04','António José',2),
		('75-XR-03', 'Mercedes',20000,'2018','2018/11/30',25,'2020/05/13','2020/05/13','Ricardo Henrique',3),
		('75-XR-04', 'Mercedes',30000,'2018','2018/11/30',100,'2020/05/13','2020/05/13','Henrique Ricardo',3);
-- SELECT * FROM VeiculoTransportador;

-- Povoamento da tabela "Encomenda"
INSERT INTO Encomenda 
	(NrEncomenda, dataPedido, dataEntrega, distancia, VeiculoTransportador_matricula, Cliente_NIF)
	VALUES
		(1,'2018/11/04', '2018/11/05', 92.9, '75-XR-04', 123764376), -- Guimaraes -> 'Mercado Acácia'
		(2,'2018/11/04', '2018/11/05', 6.2, '00-PR-05', 198773402), -- Viana -> 'Mercados Bras'
		(3,'2018/11/04', '2018/11/05', 10.2, '75-XR-03', 112346334), -- Guimaraes -> 'Talho Tourão Brito'
		(4,'2018/11/04', '2018/11/05', 49.6, '75-XR-04', 149852456), -- Guimaraes -> 'Forte São João'
		(5,'2018/11/04', '2018/11/05', 35.9, '20-VR-87', 132353289), -- Braga -> 'Pachá - Oper Ofir'
		(6,'2018/11/04', '2018/11/05', 6.3, '75-XR-03', 533498234), -- Guimaraes -> 'Bolama Ponte'
		(7,'2018/11/04', '2018/11/05', 3.5, '00-PR-05', 732349374), -- Viana -> 'Café Varandas'
		(8,'2018/11/04', '2018/11/05', 2.4, '20-VR-86', 874630143), -- Braga -> 'Escola Secundária de Carlos Amarante'
		(9,'2018/11/07', '2018/11/08', 33.7, '75-XR-04', 183497734), -- Guimarães -> 'Talho Três Silvas LDA'
		(10,'2018/11/07', '2018/11/08', 2.9, '00-PR-05', 683765253), -- Viana -> 'Restaurante Café Sport'
		(11,'2018/11/07', '2018/11/08', 5.4, '00-PR-05', 683765254), -- Viana -> 'Restaurante Sabor da Villa'
		(12,'2018/11/08', '2018/11/09', 6.3, '75-XR-03', 533498234), -- Guimaraes -> 'Bolama Ponte'
		(13,'2018/11/08', '2018/11/09', 4.3, '20-VR-86', 497453322), -- Braga -> 'Pingo Doce BP'
		(14,'2018/11/09', '2018/11/10', 8.9, '75-XR-03', 332498233), -- Guimaraes -> 'Continente Caldelas'
		(15,'2018/11/10', '2018/11/11', 8.9, '75-XR-03', 332498233), -- Guimaraes -> 'Continente Caldelas'
		(16,'2018/11/10', '2018/11/11', 4.3, '20-VR-86', 497453322), -- Braga -> 'Pingo Doce BP'
		(17,'2018/11/10', '2018/11/11', 33.7, '75-XR-04', 183497734), -- Guimarães -> 'Talho Três Silvas LDA'
		(18,'2018/11/11', '2018/11/12', 92.9, '75-XR-04', 123764376), -- Guimaraes -> 'Mercado Acácia'
		(19,'2018/11/11', '2018/11/12', 6.2, '00-PR-05', 198773402), -- Viana -> 'Mercados Bras'
		(20,'2018/11/11', '2018/11/12', 10.2, '75-XR-03', 112346334), -- Guimaraes -> 'Talho Tourão Brito'
		(21,'2018/11/11', '2018/11/12', 49.6, '75-XR-04', 149852456), -- Guimaraes -> 'Forte São João'
		(22,'2018/11/11', '2018/11/12', 35.9, '20-VR-87', 132353289), -- Braga -> 'Pachá - Oper Ofir'
		(23,'2018/11/11', '2018/11/12', 6.3, '75-XR-03', 533498234), -- Guimaraes -> 'Bolama Ponte'
		(24,'2018/11/11', '2018/11/12', 3.5, '00-PR-05', 732349374), -- Viana -> 'Café Varandas'
		(25,'2018/11/11', '2018/11/12', 2.4, '20-VR-86', 874630143), -- Braga -> 'Escola Secundária de Carlos Amarante'
		(26,'2018/11/14', '2018/11/15', 4.3, '20-VR-86', 497453322), -- Braga -> 'Pingo Doce BP'
		(27,'2018/11/14', '2018/11/15', 6.3, '75-XR-03', 533498234), -- Guimaraes -> 'Bolama Ponte'
		(28,'2018/11/15', '2018/11/16', 49.6, '75-XR-04', 149852456), -- Guimaraes -> 'Forte São João'
		(29,'2018/11/15', '2018/11/16', 35.9, '20-VR-87', 132353289), -- Braga -> 'Pachá - Oper Ofir'
		(30,'2018/11/16', '2018/11/17', 10.2, '75-XR-03', 112346334), -- Guimaraes -> 'Talho Tourão Brito'
		(31,'2018/11/18', '2018/11/19', 92.9, '75-XR-04', 123764376), -- Guimaraes -> 'Mercado Acácia'
		(32,'2018/11/18', '2018/11/19', 6.2, '00-PR-05', 198773402), -- Viana -> 'Mercados Bras'
		(33,'2018/11/18', '2018/11/19', 10.2, '75-XR-03', 112346334), -- Guimaraes -> 'Talho Tourão Brito'
		(34,'2018/11/18', '2018/11/19', 49.6, '75-XR-04', 149852456), -- Guimaraes -> 'Forte São João'
		(35,'2018/11/18', '2018/11/19', 35.9, '20-VR-87', 132353289), -- Braga -> 'Pachá - Oper Ofir'
		(36,'2018/11/18', '2018/11/19', 6.3, '75-XR-03', 533498234), -- Guimaraes -> 'Bolama Ponte'
		(37,'2018/11/18', '2018/11/19', 3.5, '00-PR-05', 732349374), -- Viana -> 'Café Varandas'
		(38,'2018/11/18', '2018/11/19', 2.4, '20-VR-86', 874630143), -- Braga -> 'Escola Secundária de Carlos Amarante'
		(39,'2018/11/21', null, null, '75-XR-04', 149852456), -- Guimaraes -> 'Forte São João'
		(40,'2018/11/21', null, null, '00-PR-05', 683765254), -- Viana -> 'Restaurante Sabor da Villa'
		(41,'2018/11/21', null, null, '00-PR-05', 198773402), -- Viana -> 'Mercados Bras'
		(42,'2018/11/21', null, null, '20-VR-86', 497453322); -- Braga -> 'Pingo Doce BP'
-- SELECT * FROM Encomenda;

-- Povoamento da tabela "Armazem_Produto"
INSERT INTO Armazem_Produto
	(NrArmazem, idProduto, stock)
	VALUES 
		(1,1,0),
		(1,2,0),
		(1,3,0),
        (1,4,0),
        (1,5,0),
        (1,6,0),
        (1,7,0),
        (1,8,0),
        (1,9,0),
        (1,10,0),
        (1,11,0),
        (1,12,0),
        (1,13,0),
        (1,14,0),
        (1,15,0),
        (1,16,0),
        (1,17,0),
        (1,18,0),
        (1,19,0),
        (1,20,0),
        (1,21,0),
        (1,22,0),
        (1,23,0),
        (1,24,0),
        (1,25,0),
        (1,26,0),
        (1,27,0),
        (1,28,0),
        (1,29,0),
        (1,30,0),
        (1,31,0),
        (1,32,0),
        (1,33,0),
        (1,34,0),
        (1,35,0),
        (1,36,0),
        (1,37,0),
        (1,38,0),
        (1,39,0),
        (1,40,0),
        (1,41,0),
        (1,42,0),
        (1,43,0),
        (1,44,0),
        (1,45,0),
        (1,46,0),
        (1,47,0),
        (1,48,0),
        (1,49,0),
        (1,50,0),
        (1,51,0),
        (1,52,0),
        (1,53,0),
        (1,54,0),
        (1,55,0),
		(2,1,0),
		(2,2,0),
		(2,3,0),
        (2,4,0),
        (2,5,0),
        (2,6,0),
        (2,7,0),
        (2,8,0),
        (2,9,0),
        (2,10,0),
        (2,11,0),
        (2,12,0),
        (2,13,0),
        (2,14,0),
        (2,15,0),
        (2,16,0),
        (2,17,0),
        (2,18,0),
        (2,19,0),
        (2,20,0),
        (2,21,0),
        (2,22,0),
        (2,23,0),
        (2,24,0),
        (2,25,0),
        (2,26,0),
        (2,27,0),
        (2,28,0),
        (2,29,0),
        (2,30,0),
        (2,31,0),
        (2,32,0),
        (2,33,0),
        (2,34,0),
        (2,35,0),
        (2,36,0),
        (2,37,0),
        (2,38,0),
        (2,39,0),
        (2,40,0),
        (2,41,0),
        (2,42,0),
        (2,43,0),
        (2,44,0),
        (2,45,0),
        (2,46,0),
        (2,47,0),
        (2,48,0),
        (2,49,0),
        (2,50,0),
        (2,51,0),
        (2,52,0),
        (2,53,0),
        (2,54,0),
        (2,55,0),
		(3,1,0),
		(3,2,0),
		(3,3,0),
        (3,4,0),
        (3,5,0),
        (3,6,0),
        (3,7,0),
        (3,8,0),
        (3,9,0),
        (3,10,0),
        (3,11,0),
        (3,12,0),
        (3,13,0),
        (3,14,0),
        (3,15,0),
        (3,16,0),
        (3,17,0),
        (3,18,0),
        (3,19,0),
        (3,20,0),
        (3,21,0),
        (3,22,0),
        (3,23,0),
        (3,24,0),
        (3,25,0),
        (3,26,0),
        (3,27,0),
        (3,28,0),
        (3,29,0),
        (3,30,0),
        (3,31,0),
        (3,32,0),
        (3,33,0),
        (3,34,0),
        (3,35,0),
        (3,36,0),
        (3,37,0),
        (3,38,0),
        (3,39,0),
        (3,40,0),
        (3,41,0),
        (3,42,0),
        (3,43,0),
        (3,44,0),
        (3,45,0),
        (3,46,0),
        (3,47,0),
        (3,48,0),
        (3,49,0),
        (3,50,0),
        (3,51,0),
        (3,52,0),
        (3,53,0),
        (3,54,0),
        (3,55,0);
-- SELECT * FROM Armazem_Produto;


-- Povoamento da tabela "Produto_Encomenda"
INSERT INTO Produto_Encomenda
	(NrEncomenda, idProduto, quantidade)
	VALUES
		(1,1,10),
		(1,7,10),
		(1,17,50),
		(1,28,100),
		(2,2,10),
		(2,8,10),
		(2,18,50),
		(2,29,100),
		(3,49,20),
		(3,50,20),
		(3,51,20),
		(3,52,20),
		(3,53,20),
		(4,24,200),
		(4,25,200),
		(4,31,1000),
		(4,34,200),
		(4,35,200),
		(5,24,200),
		(5,26,200),
		(5,27,1000),
		(5,30,500),
		(6,17,500), -- O Bolama compra-nos a água pessoal!!!
		(6,18,500),
		(6,19,500),
		(6,20,500),
		(7,36,100),
		(7,37,100),
		(7,38,100),
		(8,10,100),
		(8,11,100),
		(8,12,100),
		(8,13,100),
		(8,14,100),
		(8,15,100),
		(9,1,450),
		(9,4,250),
		(9,5,150),
		(9,7,300),
		(10,39,100),
		(10,40,100),
		(10,41,100),
		(10,42,100),
		(10,43,100),
		(11,39,100),
		(11,40,100),
		(11,41,100),
		(11,42,100),
		(11,43,100),
		(12,17,500), -- O Bolama compra-nos a água pessoal!!!
		(12,18,500),
		(12,19,500),
		(12,20,500),
		(13,42,500),
		(13,43,500),
		(14,42,1000),
		(14,43,1000),
		(15,21,200),
		(15,22,200),
		(15,23,200),
		(16,21,150),
		(16,22,150),
		(16,23,300),
		(17,54,200),
		(17,55,300),
		(18,1,10),
		(18,7,10),
		(18,17,50),
		(18,28,100),
		(19,2,10),
		(19,8,10),
		(19,18,50),
		(19,29,100),
		(20,49,20),
		(20,50,20),
		(20,51,20),
		(20,52,20),
		(20,53,20),
		(21,24,200),
		(21,25,200),
		(21,31,1000),
		(21,34,200),
		(21,35,200),
		(22,24,200),
		(22,26,200),
		(22,27,1000),
		(22,30,500),
		(23,17,500), -- O Bolama compra-nos a água pessoal!!!
		(23,18,500),
		(23,19,500),
		(23,20,500),
		(24,36,100),
		(24,37,100),
		(24,38,100),
		(25,10,100),
		(25,11,100),
		(25,12,100),
		(25,13,100),
		(25,14,100),
		(25,15,100),
		(26,44,200),
		(26,45,200),
		(26,46,200),
		(26,47,200),
		(27,44,100),
		(27,45,100),
		(27,46,100),
		(27,47,100),
		(28,24,200),
		(28,25,200),
		(28,31,1000),
		(28,34,200),
		(28,35,200),
		(29,24,200),
		(29,26,200),
		(29,27,1000),
		(29,30,500),
		(30,1,450),
		(30,4,250),
		(30,5,150),
		(30,7,300),
		(31,1,10),
		(31,7,10),
		(31,17,50),
		(31,28,100),
		(32,2,10),
		(32,8,10),
		(32,18,50),
		(32,29,100),
		(33,49,20),
		(33,50,20),
		(33,51,20),
		(33,52,20),
		(33,53,20),
		(34,24,200),
		(34,25,200),
		(34,31,1000),
		(34,34,200),
		(34,35,200),
		(35,24,200),
		(35,26,200),
		(35,27,1000),
		(35,30,500),
		(36,17,500), -- O Bolama compra-nos a água pessoal!!!
		(36,18,500),
		(36,19,500),
		(36,20,500),
		(37,36,100),
		(37,37,100),
		(37,38,100),
		(38,10,100),
		(38,11,100),
		(38,12,100),
		(38,13,100),
		(38,14,100),
		(38,15,100),
		(39,24,200),
		(39,25,100),
		(39,31,500),
		(39,34,100),
		(39,35,100),
		(40,39,50),
		(40,40,50),
		(40,41,50),
		(40,42,50),
		(40,43,50),
		(41,2,10),
		(41,8,10),
		(41,18,50),
		(41,29,100),
		(42,44,300),
		(42,45,300),
		(42,46,300),
		(42,47,300);
-- SELECT * FROM Produto_Encomenda;

-- Requisitos
-- Requisito 1
CREATE PROCEDURE InformacoesDeUmProduto (IN nomeProduto varchar(50))
SELECT *
FROM Produto
WHERE Produto.nome = nomeProduto;

CALL InformacoesDeUmProduto ('Whisky Velho 18 anos - Chivas Regal');

-- Requisito 2
CREATE PROCEDURE InformacoesDeUmCliente (IN NIF int)
SELECT *
FROM Cliente
WHERE Cliente.NIF = NIF;

CALL InformacoesDeUmCliente ('149852456');

-- Requisito 3
CREATE PROCEDURE InformacoesDeUmaEncomenda (IN NEncomenda int)
SELECT *
FROM Encomenda
WHERE Encomenda.NrEncomenda = NEncomenda;

CALL InformacoesDeUmaEncomenda ('11');

-- Requisito 4
CREATE PROCEDURE InformacoesDeUmArmazem (IN NArmazem int)
SELECT *
FROM Armazem
WHERE Armazem.NrArmazem = NArmazem;

CALL InformacoesDeUmArmazem ('1');

-- Requisito 5
CREATE PROCEDURE InformacoesDeUmVeiculo (IN Matricula varchar(10))
SELECT *
FROM VeiculoTransportador
WHERE VeiculoTransportador.matricula = Matricula;

CALL InformacoesDeUmVeiculo ('00-PR-05');

-- Requisito 6.
CREATE PROCEDURE ProdutosDasEncomendasParaUmCliente (IN nomeClienteX varchar(50))
SELECT p.nome, p.preco, pe.quantidade
FROM Produto p, Produto_Encomenda pe, Encomenda e, Cliente c
WHERE p.idProduto = pe.idProduto 
				AND pe.NrEncomenda = e.NrEncomenda 
                AND e.Cliente_NIF = c.NIF 
                AND c.nome=nomeClienteX;

CALL ProdutosDasEncomendasParaUmCliente ('Bolama Ponte');

-- Requisito 7.
CREATE PROCEDURE EncomendasNumIntervaloDatas(IN dataInicio DATE, IN dataFim DATE)
SELECT e.NrEncomenda, e.DataPedido, e.DataEntrega, c.Nome
FROM Encomenda e, Cliente c
WHERE dataInicio <= e.DataEntrega
				AND dataFim >= e.DataEntrega
				AND e.Cliente_NIF = c.NIF;
                
CALL EncomendasNumIntervaloDatas('2018/11/04', '2018/11/11');

-- Requisito 11.
CREATE PROCEDURE CreditosNumaData_ (IN dataX DATE)
SELECT e.NrEncomenda, e.DataPedido, sum(p.preco * pe.quantidade)
FROM Encomenda e, Produto p, Produto_Encomenda pe
WHERE p.idProduto = pe.idProduto 
				AND pe.NrEncomenda = e.NrEncomenda 
                AND dataX = e.DataPedido
GROUP BY e.NrEncomenda;

-- Requisito 11. (diferente)
CREATE PROCEDURE CreditosNumaData (IN dataX DATE)
SELECT e.DataPedido, sum(p.preco * pe.quantidade)
FROM Encomenda e, Produto p, Produto_Encomenda pe
WHERE p.idProduto = pe.idProduto 
				AND pe.NrEncomenda = e.NrEncomenda 
                AND dataX = e.DataPedido
GROUP BY e.DataPedido;
                
CALL CreditosNumaData('2018/11/04');

-- Transações
DELIMITER $$
CREATE PROCEDURE AdicionarNovoCliente(IN id INT,  n VARCHAR(50), r VARCHAR(50), c VARCHAR(40), e VARCHAR(40), t INT)
BEGIN
	DECLARE erro BOOL DEFAULT 0;
    DECLARE existe BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET erro = 1;
    
    START TRANSACTION;
		
        IF ((SELECT NIF FROM Cliente WHERE NIF = id)>0) THEN SET existe = 1;
		END IF;
        
        IF existe 
			THEN SELECT('O Cliente já existe na Base de Dados') AS msg;
						SET erro = 1;
			ELSE INSERT
						INTO Cliente(NIF, nome, rua, cidade, endereco, tipo)
						VALUES (id, n, r, c, e, t);
						SET erro = 0;
		END IF;
        
			IF erro THEN
				SELECT ('Erro ao adicionar uma entrada na tabela Cliente') AS msg;
				ROLLBACK;
			ELSE 
				SELECT ('Operaçao efetuada com sucesso') AS msg;
				COMMIT;
			END IF;
END; $$

CALL AdicionarNovoCliente(345687311, 'Biba Ofir', 'Avenida Antonio Veigo', 'Fao', 'biba_ofir@gmail.com',3);

DELIMITER $$
CREATE PROCEDURE AdicionarDataEntrega(IN nE INT, d FLOAT)
BEGIN
	DECLARE erro BOOL DEFAULT 0;
    DECLARE nulo BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET erro = 1;
    
    START TRANSACTION;
    
		IF ((SELECT e.dataEntrega FROM Encomenda e WHERE e.NrEncomenda=nE) IS NULL) THEN SET nulo = 1;
		END IF;
    
		IF nulo
			THEN UPDATE Encomenda SET dataEntrega = NOW() WHERE nrEncomenda = nE;
					   UPDATE Encomenda SET distancia = d WHERE nrEncomenda = nE;
            ELSE SET erro = 1;
        END IF;
        
			IF erro THEN
				SELECT ('Esta Encomenda já foi entregue') as msg;
				ROLLBACK;
			ELSE 
				SELECT ('Operaçao efetuada com sucesso') as msg;
				COMMIT;
			END IF;
END; $$

CALL AdicionarDataEntrega(42,46.5);

DELIMITER $$
CREATE PROCEDURE AtualizarDataInspecao(IN m VARCHAR(10), dInsp DATE )
BEGIN
	DECLARE erro BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET erro = 1;
    
    START TRANSACTION;
    
		UPDATE VeiculoTransportador SET dataInspecao = dInsp WHERE matricula = m;
			IF erro THEN
				SELECT ('Erro ao adicionar uma entrada na tabela VeiculoTransportador') as msg;
				ROLLBACK;
			ELSE 
				SELECT ('Operaçao efetuada com sucesso') as msg;
				COMMIT;
			END IF;
END; $$

CALL AtualizarDataInspecao('00-PR-05','2019/11/24');

-- Triggers
DELIMITER $$
CREATE TRIGGER atualiza_camioes
AFTER INSERT ON VeiculoTransportador
FOR EACH ROW
Begin

if(NEW.NrArmazem is not null)
then
	UPDATE Armazem
	SET NrCamioes = NrCamioes + 1
    WHERE Armazem.NrArmazem = NEW.NrArmazem;
    end if;
    
End $$
DELIMITER ;

INSERT INTO VeiculoTransportador 
VALUES
('64-07-HR','Ford',50000,'2017','2018/12/07',70,'2019/10/05','2019/10/05','Diogo Dias',1);

-- Views
-- Encomendas pendentes - Requisito 16
CREATE VIEW EncomendasPendentes AS
SELECT *
FROM Encomenda e
WHERE e.dataEntrega IS NULL
ORDER BY e.dataPedido;

SELECT * FROM DistribuMinho.encomendaspendentes;

-- Renovação do seguro no mes atual - Requisito 13
CREATE VIEW VeiculosRenovarSeguroMesAtual AS
SELECT v.Matricula, v.Marca, v.dataRenovacaoSeguro
FROM VeiculoTransportador v
WHERE MONTH(v.dataRenovacaoSeguro) = MONTH(NOW())
			AND YEAR(v.dataRenovacaoSeguro) = YEAR(NOW());

SELECT * FROM DistribuMinho.veiculosrenovarseguromesatual;

-- Veículos que precisam de ir à inspeção este mês - Requisito 14
CREATE VIEW VeiculosInspecaoMesAtual AS
SELECT v.matricula, v.marca, v.dataInspecao
FROM VeiculoTransportador v
WHERE MONTH(v.dataInspecao) = MONTH(NOW())
				AND YEAR(v.dataInspecao) = YEAR(NOW());
            
SELECT * FROM DistribuMinho.veiculosinspecaomesatual;

-- Veiculos que precisam de ser substituídos - Requisito 12
CREATE VIEW VeiculosNecessitamSubstituicao AS
SELECT v.matricula, v.marca, v.dataInspecao
FROM VeiculoTransportador v
WHERE v.NrKmsRealizados >= 300000;

SELECT * FROM DistribuMinho.veiculosnecessitamsubstituicao;

-- Veículos Transportadores que necessitam de renovar o imposto de selo este mês - Requisito 15
CREATE VIEW VeiculosRenovarImpostoSelo AS
SELECT v.matricula, v.marca, v.dataInspecao
FROM VeiculoTransportador v
WHERE MONTH(v.dataRenovacaoImpostoSelo) = MONTH(NOW())
				AND YEAR(v.dataRenovacaoImpostoSelo) = YEAR(NOW());
                
SELECT * FROM DistribuMinho.veiculosrenovarimpostoselo;

-- Requisitos de Controlo
CREATE ROLE Motorista;

CREATE ROLE FuncionarioEscritorio;

CREATE ROLE Gestor;

CREATE ROLE ChefeArmazem;


GRANT SELECT
ON VeiculosRenovarSeguroMesAtual
TO FuncionarioEscritorio;

GRANT EXECUTE
ON PROCEDURE CreditosNumaData
TO Gestor;

-- <fim>
--