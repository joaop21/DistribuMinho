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