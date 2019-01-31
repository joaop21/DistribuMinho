-- Número de Camiões

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