drop database dbprodutos;
CREATE database dbprodutos;

use dbprodutos;

CREATE TABLE PRODUTOS 
( 
CODIGO INT, 
NOME VARCHAR(50), 
TIPO VARCHAR(25), 
QUANTIDADE INT, 
VALOR DECIMAL(10,2) 
);
 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 1,'IMPRESSORA', 'INFORMATICA', 200, 600.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 2,'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 3,'DVD PLAYER', 'ELETRONICOS', 250, 500.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 4,'MONITOR', 'INFORMATICA', 400, 900.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 5,'TELEVISOR', 'ELETRONICOS', 350, 650.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 6,'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 7,'CELULAR', 'TELEFONE', 450, 850.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 8,'TECLADO', 'INFORMATICA', 300, 450.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 9,'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 10,'MOUSE', 'INFORMATICA', 400, 60.00 );

show tables;

desc PRODUTOS;

-- Comandos select

select * from PRODUTOS;

select nome, valor from PRODUTOS;

select CODIGO as 'Código', nome as 'Nome do produto' from PRODUTOS;

select distinct tipo from PRODUTOS;

select * from PRODUTOS where QUANTIDADE > 250;

select nome, TIPO from PRODUTOS where valor <=150;

select * from PRODUTOS where QUANTIDADE >= 300 and valor <= 50;

select * from PRODUTOS where QUANTIDADE >= 300 or valor <= 50;

select * from PRODUTOS where NOME = 'MONITOR' and TIPO = 'INFORMATICA';

select * from PRODUTOS where NOME = 'MONITOR' or TIPO = 'INFORMATICA';

select * from PRODUTOS where TIPO in('INFORMATICA', 'TELEFONE');

select * from PRODUTOS where valor between 250 and 400;

select * from PRODUTOS where valor not between 250 and 400;

select * from PRODUTOS where CODIGO = 5;

-- pesquisa por nome

select * from PRODUTOS where nome like '%o';

select * from PRODUTOS where nome like 'i%';

select * from PRODUTOS where nome like '%a%';

select * from PRODUTOS where nome like '%a%' and TIPO = 'INFORMATICA';

select * from PRODUTOS where nome like '%a%' or TIPO = 'INFORMATICA';

-- Somar a um dos valores

select valor * 1.12 as 'Valor' from produtos where nome like 'F%';

update produtos set valor = valor * 1.12 where nome like 'f%';

select nome, valor from produtos where nome like 'f%';

update produtos set quantidade = quantidade + 50 where valor > 400 and valor < 600;

select * from produtos where valor > 400 and valor < 600;