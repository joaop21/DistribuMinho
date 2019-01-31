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