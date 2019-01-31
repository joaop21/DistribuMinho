SELECT * FROM Encomenda;

SELECT * FROM Produto;

SELECT * FROM Tipo_Produto;

SELECT * FROM Cliente;

SELECT * FROM VeiculoTransportador;

SELECT * FROM Armazem;

-- nome dos produtos congelados
SELECT nome
FROM Produto, Tipo_Produto
WHERE Produto.tipo = Tipo_Produto.idTipoProduto and Tipo_Produto.designacao = 'Congelados';

-- produto mais caro
SELECT nome, preco
FROM Produto
ORDER BY Produto.preco DESC
LIMIT 1;

-- produtos que vao para o forte sao joao (todas as encomendas)
SELECT p.nome, p.preco, pe.quantidade
FROM Produto p, Produto_Encomenda pe, Encomenda e, Cliente c
WHERE p.idProduto = pe.idProduto 
				AND pe.NrEncomenda = e.NrEncomenda 
                AND e.Cliente_NIF = c.NIF 
                AND c.nome='Forte São João';
                
-- Procedure: produtos que vao para o ClienteX (todas as encomendas)
CREATE PROCEDURE ProdutosDasEncomendasParaUmCliente (IN nomeClienteX varchar(50))
SELECT p.nome, p.preco, pe.quantidade
FROM Produto p, Produto_Encomenda pe, Encomenda e, Cliente c
WHERE p.idProduto = pe.idProduto 
				AND pe.NrEncomenda = e.NrEncomenda 
                AND e.Cliente_NIF = c.NIF 
                AND c.nome=nomeClienteX;

CALL ProdutosDasEncomendasParaUmCliente ('Bolama Ponte');