Use DistribuMinho;

CREATE ROLE Motorista;

CREATE ROLE FuncionarioEscritorio;

CREATE ROLE Gestor;

CREATE ROLE ChefeArmazem;


GRANT EXECUTE
ON PROCEDURE VeiculosRenovarSeguroMesCorrente
TO FuncionarioEscritorio;

GRANT EXECUTE
ON PROCEDURE CreditosNumaData
TO Gestor;

