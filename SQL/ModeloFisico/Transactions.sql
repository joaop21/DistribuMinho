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

-- por completar ...
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