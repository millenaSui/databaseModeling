## Modelagem de Banco de Dados - Atividade (M6)

Construção de *script SQL/DDL* do diagrama fornecido para o *PostgreSQL*, análise de restrições e desenvolvimento de comandos *DML*.

### Etapa 1
Construir o *script SQL/DDL* do banco de dados comércio para o *PostgreSQL*, tendo como base o modelo conceitual apresentado em `exemplo.brM3`.

### Etapa 2
Considerar o mesmo banco de dados “empresa” utilizado na atividade exemplo 6.b) para analisar todas as restrições de integridade violadas em cada operação abaixo, se houver alguma, e os diferentes mecanismos para impor essas restrições. Escreva o comando *DML* adequado (mesmo que ‘erros’ sejam gerados em função da falta de restrição).
- Insira >‘677678989’, null, 40,0< em TRABALHA.
- Remova a tupla de EMPREGADO com SSN = ‘987654321’.
- Modifique o GERSSN e GERDATAINICIO da tupla de DEPARTAMENTO com DNUMERO = 5 para
‘123456789’ e ‘1999-01-10’, respectivamente.
- Modifique o atributo HORAS da tupla de TRABALHA com ESSN = ‘999887777’ e PNO = ‘10’ para 5,0