CREATE TABLE cliente (
    codigo_cliente INTEGER PRIMARY KEY,
    nome VARCHAR(30)
    UF VARCHAR(2)
);

CREATE TABLE produto (
    codigo_produto INTEGER PRIMARY KEY,
    descricao VARCHAR(50),
    precoCompra NUMERIC(10, 2),
    lucro NUMERIC(10, 2),
    qtde NUMERIC(10, 2),
    categoria VARCHAR(30)
);
CREATE TABLE venda (
    numero_venda INTEGER PRIMARY KEY,
    data DATE,
    total NUMERIC(10, 2),
    codigo_cliente INTEGER
);
CREATE TABLE itemVenda (
    codigo_produto INTEGER,
    numero_venda INTEGER,
    qtde NUMERIC (10, 2),
    preco NUMERIC(10, 2),
);

-- Definindo as chaves estrangeiras
ALTER TABLE venda ADD CONSTRAINT FK_venda FOREIGN KEY(codigo_cliente) REFERENCES
cliente(codigo_cliente);
ALTER TABLE itemVenda ADD CONSTRAINT FK_itemVenda_codigo_produto FOREIGN
KEY(codigo_produto) REFERENCES produto(codigo_produto);
ALTER TABLE itemVenda ADD CONSTRAINT FK_itemVenda_numero_venda FOREIGN
KEY(numero_venda) REFERENCES venda(numero_venda);