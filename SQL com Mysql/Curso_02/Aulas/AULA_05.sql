SELECT (23+((25-2)/2)*45) AS RESULTADO;

SELECT CEILING(12.33333232323) AS RESULTADO;

SELECT ROUND(12.33333232323) AS RESULTADO;
SELECT ROUND(12.7777232323) AS RESULTADO;

SELECT NUMERO, QUANTIDADE, PRECO
 FROM ITENS_NOTAS_FISCAIS;
 
SELECT NUMERO, QUANTIDADE, PRECO, ROUND(QUANTIDADE * PRECO, 2) AS FATURAMENTO
 FROM ITENS_NOTAS_FISCAIS;
 
 ##### CONVERTER DADOS ################
 
 SELECT CURRENT_TIMESTAMP() AS RESULTADO;
 
 SELECT CONCAT('O dia de hoje é: ', CURRENT_TIMESTAMP()) AS RESULTADO;
 
 SELECT CONCAT('O dia de hoje é: ', 
DATE_FORMAT(CURRENT_TIMESTAMP(),'%Y') ) AS RESULTADO;

SELECT CONCAT('O dia de hoje é: ', 
DATE_FORMAT(CURRENT_TIMESTAMP(),'%m/%y') ) AS RESULTADO;


SELECT CONCAT('O dia de hoje é: ', 
DATE_FORMAT(CURRENT_TIMESTAMP(),'%W, %d/%m/%Y') ) AS RESULTADO;
 