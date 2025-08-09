CREATE DATABASE Amostralanche;
USE Amostralanche;

# Tabelas independentes 
CREATE TABLE CLIENTE (
    cpf CHAR(11) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(15) NOT NULL,
    data_nascimento DATE,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
    status_ativo BOOLEAN DEFAULT TRUE,
    PRIMARY KEY (cpf)
);

CREATE TABLE CATEGORIA_RESTAURANTE (
    codigo_categoria INT AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT,
    PRIMARY KEY (codigo_categoria)
);

CREATE TABLE CEP_LOCALIDADE (
    cep CHAR(8) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    PRIMARY KEY (cep)
);

CREATE TABLE ENTREGADOR (
    cpf CHAR(11) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    cnh VARCHAR(20) NOT NULL UNIQUE,
    tipo_veiculo VARCHAR(30) NOT NULL,
    placa_veiculo VARCHAR(10) NOT NULL,
    status_disponibilidade ENUM('disponível', 'ocupado', 'offline') DEFAULT 'offline',
    avaliacao_media DECIMAL(3,2) DEFAULT 0.00,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (cpf)
);

CREATE TABLE PROMOCAO (
    codigo_promocao INT AUTO_INCREMENT,
    nome_promocao VARCHAR(100) NOT NULL,
    descricao TEXT,
    tipo_desconto ENUM('percentual', 'valor_fixo') NOT NULL,
    valor_desconto DECIMAL(10,2) NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    valor_minimo_pedido DECIMAL(10,2) DEFAULT 0.00,
    ativa BOOLEAN DEFAULT TRUE,
    PRIMARY KEY (codigo_promocao)
);

# Tabelas com dependência simples 
CREATE TABLE ENDERECO (
    cpf_cliente CHAR(11) NOT NULL,
    numero_endereco INT NOT NULL,
    rua VARCHAR(200) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    complemento VARCHAR(100),
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    cep CHAR(8) NOT NULL,
    tipo_endereco ENUM('residencial', 'comercial') DEFAULT 'residencial',
    endereco_principal BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (cpf_cliente, numero_endereco),
    FOREIGN KEY (cpf_cliente) REFERENCES CLIENTE(cpf) ON DELETE CASCADE
);

CREATE TABLE RESTAURANTE_NORMALIZADO (
    cnpj CHAR(14) NOT NULL,
    nome_fantasia VARCHAR(100) NOT NULL,
    razao_social VARCHAR(150) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(15) NOT NULL,
    rua_endereco VARCHAR(200) NOT NULL,
    numero_endereco VARCHAR(10) NOT NULL,
    cep_endereco CHAR(8) NOT NULL,
    taxa_entrega DECIMAL(5,2) DEFAULT 0.00,
    tempo_preparo_medio INT DEFAULT 30,
    horario_abertura TIME,
    horario_fechamento TIME,
    status_funcionamento ENUM('aberto', 'fechado', 'pausado') DEFAULT 'fechado',
    avaliacao_media DECIMAL(3,2) DEFAULT 0.00,
    codigo_categoria INT NOT NULL,
    PRIMARY KEY (cnpj),
    FOREIGN KEY (codigo_categoria) REFERENCES CATEGORIA_RESTAURANTE(codigo_categoria),
    FOREIGN KEY (cep_endereco) REFERENCES CEP_LOCALIDADE(cep)
);

CREATE TABLE PRODUTO (
    codigo_produto INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    categoria_produto VARCHAR(50) NOT NULL,
    disponivel BOOLEAN DEFAULT TRUE,
    tempo_preparo INT DEFAULT 15,
    foto_url VARCHAR(500),
    cnpj_restaurante CHAR(14) NOT NULL,
    PRIMARY KEY (codigo_produto),
    FOREIGN KEY (cnpj_restaurante) REFERENCES RESTAURANTE_NORMALIZADO(cnpj) ON DELETE CASCADE
);

CREATE TABLE CLIENTE_PROMOCAO (
    cpf_cliente CHAR(11) NOT NULL,
    codigo_promocao INT NOT NULL,
    data_uso DATETIME NOT NULL,
    valor_desconto DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (cpf_cliente, codigo_promocao, data_uso),
    FOREIGN KEY (cpf_cliente) REFERENCES CLIENTE(cpf) ON DELETE CASCADE,
    FOREIGN KEY (codigo_promocao) REFERENCES PROMOCAO(codigo_promocao) ON DELETE CASCADE
);

# Tabelas com dependências multiplas
CREATE TABLE PEDIDO (
    numero_pedido INT AUTO_INCREMENT,
    cpf_cliente CHAR(11) NOT NULL,
    cpf_entregador CHAR(11),
    numero_endereco INT NOT NULL,
    data_hora_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    status_pedido ENUM('pendente', 'confirmado', 'preparando', 'pronto', 'saiu_entrega', 'entregue', 'cancelado') DEFAULT 'pendente',
    valor_produtos DECIMAL(10,2) NOT NULL,
    valor_entrega DECIMAL(10,2) DEFAULT 0.00,
    valor_desconto DECIMAL(10,2) DEFAULT 0.00,
    valor_total DECIMAL(10,2) NOT NULL,
    observacoes_gerais TEXT,
    tempo_estimado_entrega INT,
    PRIMARY KEY (numero_pedido),
    FOREIGN KEY (cpf_cliente) REFERENCES CLIENTE(cpf),
    FOREIGN KEY (cpf_entregador) REFERENCES ENTREGADOR(cpf),
    FOREIGN KEY (cpf_cliente, numero_endereco) REFERENCES ENDERECO(cpf_cliente, numero_endereco)
);

## Tabela com dependência em PEDIDO
CREATE TABLE ITEM_PEDIDO (
    numero_pedido INT NOT NULL,
    codigo_produto INT NOT NULL,
    quantidade INT NOT NULL DEFAULT 1,
    preco_unitario DECIMAL(10,2) NOT NULL,
    observacoes_item TEXT,
    PRIMARY KEY (numero_pedido, codigo_produto),
    FOREIGN KEY (numero_pedido) REFERENCES PEDIDO(numero_pedido) ON DELETE CASCADE,
    FOREIGN KEY (codigo_produto) REFERENCES PRODUTO(codigo_produto)
);

CREATE TABLE PAGAMENTO (
    numero_pedido INT NOT NULL,
    forma_pagamento ENUM('cartao_credito', 'cartao_debito', 'pix', 'dinheiro') NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    status_pagamento ENUM('pendente', 'processando', 'aprovado', 'recusado') DEFAULT 'pendente',
    data_processamento DATETIME,
    PRIMARY KEY (numero_pedido),
    FOREIGN KEY (numero_pedido) REFERENCES PEDIDO(numero_pedido) ON DELETE CASCADE
);

CREATE TABLE AVALIACAO_RESTAURANTE (
    numero_pedido INT NOT NULL,
    nota_restaurante INT NOT NULL CHECK (nota_restaurante BETWEEN 1 AND 5),
    comentario_restaurante TEXT,
    nota_comida INT CHECK (nota_comida BETWEEN 1 AND 5),
    nota_tempo_entrega INT CHECK (nota_tempo_entrega BETWEEN 1 AND 5),
    data_avaliacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (numero_pedido),
    FOREIGN KEY (numero_pedido) REFERENCES PEDIDO(numero_pedido) ON DELETE CASCADE
);

CREATE TABLE AVALIACAO_ENTREGADOR (
    numero_pedido INT NOT NULL,
    nota_entregador INT NOT NULL CHECK (nota_entregador BETWEEN 1 AND 5),
    comentario_entregador TEXT,
    nota_cordialidade INT CHECK (nota_cordialidade BETWEEN 1 AND 5),
    nota_tempo INT CHECK (nota_tempo BETWEEN 1 AND 5),
    data_avaliacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (numero_pedido),
    FOREIGN KEY (numero_pedido) REFERENCES PEDIDO(numero_pedido) ON DELETE CASCADE
);



