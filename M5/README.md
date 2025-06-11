## Modelagem de Banco de Dados - Atividade (M5)

Melhorias do Diagrama Entidade-Relacionamento (DER) desenvolvido no **M2** através de etapas que envolvem conversões para modelo lógico, físico e teste dos resultados obtidos através de SGBD PostgreSQL.

### Etapa 1
Conversão do *DER* para modelo lógico e atribuição de tipos para alguns dos atributos de entidades selecionadas (não preencher todos para entender a diferença entre as áreas de **Editar Tipos** e de **Editar Campos** desbloqueada com a conversão do modelo).

### Etapa 2
Uso da área de **Editar Campos** para finalizar a atribuição de tipos para os atributos de cada entidade e, após a finalização, converter esse para o modelo físico.

### Etapa 3
Usar a *VM* do curso para testar a execução do script resultante e fazer os ajustes necessários para que esse funcione de acordo com o almejado.

### Etapa 4
Executar um script já existente na *VM* para criação de uma tabela a ser utilizada nas próximas atividades do curso e efetuar a consulta abaixo para certificação de que essa foi inicializada conforme deveria.

```sql
SELECT * FROM empregado;
```