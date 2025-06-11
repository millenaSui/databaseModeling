/* DES10-Ativ5a_Millena_Costa: */

CREATE TABLE MARINHEIRO (
    numero_identificacao INTEGER PRIMARY KEY,
    nome CHAR(100),
    data_nascimento DATE,
    nacionalidade CHAR(100),
    numero_id_supervisor INTEGER,
    FK_NAVIO_numero_navio INTEGER
);

CREATE TABLE NAVIO (
    numero_navio INTEGER PRIMARY KEY,
    nome CHAR(100),
    peso FLOAT,
    ano_construcao inteiro,
    fabricante CHAR(100),
    capacidade_passageiros INTEGER
);

CREATE TABLE CRUZEIRO (
    numero_serie INTEGER PRIMARY KEY,
    nome CHAR(100),
    data_partida DATE,
    data_retorno DATE,
    nome_porto_saida CHAR(100),
    FK_NAVIO_numero_navio INTEGER
);

CREATE TABLE PORTO (
    nome CHAR(100),
    pais CHAR(100),
    numero_docas INTEGER,
    taxa_atraque DECIMAL,
    PRIMARY KEY (nome, pais)
);

CREATE TABLE Supervisiona (
    fk_MARINHEIRO_numero_identificacao INTEGER,
    fk_MARINHEIRO_numero_identificacao_ INTEGER
);

CREATE TABLE ParaEm (
    fk_PORTO_nome CHAR(100),
    fk_PORTO_pais CHAR(100),
    fk_CRUZEIRO_numero_serie INTEGER
);
 
ALTER TABLE MARINHEIRO ADD CONSTRAINT FK_MARINHEIRO_2
    FOREIGN KEY (FK_NAVIO_numero_navio)
    REFERENCES NAVIO (numero_navio)
    ON DELETE RESTRICT;
 
ALTER TABLE CRUZEIRO ADD CONSTRAINT FK_CRUZEIRO_2
    FOREIGN KEY (FK_NAVIO_numero_navio)
    REFERENCES NAVIO (numero_navio)
    ON DELETE CASCADE;
 
ALTER TABLE Supervisiona ADD CONSTRAINT FK_Supervisiona_1
    FOREIGN KEY (fk_MARINHEIRO_numero_identificacao)
    REFERENCES MARINHEIRO (numero_identificacao)
    ON DELETE CASCADE;
 
ALTER TABLE Supervisiona ADD CONSTRAINT FK_Supervisiona_2
    FOREIGN KEY (fk_MARINHEIRO_numero_identificacao_)
    REFERENCES MARINHEIRO (numero_identificacao)
    ON DELETE CASCADE;
 
ALTER TABLE ParaEm ADD CONSTRAINT FK_ParaEm_1
    FOREIGN KEY (fk_PORTO_nome, fk_PORTO_pais)
    REFERENCES PORTO (nome, pais)
    ON DELETE RESTRICT;
 
ALTER TABLE ParaEm ADD CONSTRAINT FK_ParaEm_2
    FOREIGN KEY (fk_CRUZEIRO_numero_serie)
    REFERENCES CRUZEIRO (numero_serie)
    ON DELETE SET NULL;