## Script para popular base de dados
use amostralanche;

# Tabelas independentes
-- Inserção de 15 clientes
INSERT INTO CLIENTE (cpf, nome, email, telefone, data_nascimento, status_ativo) VALUES
('12345678901', 'Ana Silva Santos', 'ana.silva@email.com', '11987654321', '1990-05-15', TRUE),
('23456789012', 'Carlos Eduardo Lima', 'carlos.lima@email.com', '11876543210', '1985-03-22', TRUE),
('34567890123', 'Maria José Oliveira', 'maria.oliveira@email.com', '11765432109', '1992-08-10', TRUE),
('45678901234', 'João Pedro Costa', 'joao.costa@email.com', '11654321098', '1988-12-03', TRUE),
('56789012345', 'Fernanda Almeida', 'fernanda.almeida@email.com', '11543210987', '1995-01-25', TRUE),
('67890123456', 'Ricardo Pereira', 'ricardo.pereira@email.com', '11432109876', '1987-07-18', TRUE),
('78901234567', 'Juliana Rodrigues', 'juliana.rodrigues@email.com', '11321098765', '1993-11-08', TRUE),
('89012345678', 'Bruno Martins', 'bruno.martins@email.com', '11210987654', '1991-04-30', TRUE),
('90123456789', 'Carla Fernandes', 'carla.fernandes@email.com', '11109876543', '1989-09-14', TRUE),
('01234567890', 'Diego Santos', 'diego.santos@email.com', '11998765432', '1994-06-27', TRUE),
('11223344556', 'Patrícia Lima', 'patricia.lima@email.com', '11887766554', '1986-02-12', TRUE),
('22334455667', 'André Souza', 'andre.souza@email.com', '11776655443', '1996-10-05', TRUE),
('33445566778', 'Tatiana Rocha', 'tatiana.rocha@email.com', '11665544332', '1990-12-20', TRUE),
('44556677889', 'Marcos Vieira', 'marcos.vieira@email.com', '11554433221', '1987-03-16', TRUE),
('55667788990', 'Luciana Castro', 'luciana.castro@email.com', '11443322110', '1993-08-29', TRUE);

-- Inserção de 15 categorias de restaurante
INSERT INTO CATEGORIA_RESTAURANTE (nome_categoria, descricao) VALUES
('Pizza', 'Restaurantes especializados em pizzas tradicionais e gourmet'),
('Hambúrguer', 'Lanchonetes e hamburgerias artesanais'),
('Japonesa', 'Culinária japonesa: sushi, sashimi, yakisoba'),
('Italiana', 'Pratos típicos da Itália: massas, risotos, carnes'),
('Brasileira', 'Comida caseira e pratos típicos do Brasil'),
('Chinesa', 'Culinária chinesa tradicional e contemporânea'),
('Mexicana', 'Pratos mexicanos: tacos, burritos, nachos'),
('Vegetariana', 'Opções vegetarianas e veganas'),
('Árabe', 'Culinária árabe: esfihas, kebabs, pratos típicos'),
('Açaí', 'Açaí na tigela, vitaminas e sucos naturais'),
('Doces', 'Sobremesas, bolos, doces e confeitaria'),
('Frutos do Mar', 'Peixes, camarões e frutos do mar'),
('Churrasco', 'Carnes grelhadas e churrasco tradicional'),
('Saudável', 'Comidas fitness, saladas e pratos balanceados'),
('Lanches', 'Sanduíches, salgados e lanches rápidos');

-- Inserção de 15 localidades (CEPs)
INSERT INTO CEP_LOCALIDADE (cep, cidade, bairro) VALUES
('01310100', 'São Paulo', 'Bela Vista'),
('04038001', 'São Paulo', 'Vila Olímpia'),
('05407002', 'São Paulo', 'Pinheiros'),
('01452000', 'São Paulo', 'Jardim Paulista'),
('04094050', 'São Paulo', 'Vila Nova Conceição'),
('03102001', 'São Paulo', 'Mooca'),
('02035001', 'São Paulo', 'Santana'),
('05650000', 'São Paulo', 'Campo Belo'),
('01239001', 'São Paulo', 'Centro'),
('04567890', 'São Paulo', 'Brooklin'),
('05432100', 'São Paulo', 'Butantã'),
('03456789', 'São Paulo', 'Tatuapé'),
('01234567', 'São Paulo', 'Liberdade'),
('02345678', 'São Paulo', 'Vila Madalena'),
('06789012', 'São Paulo', 'Morumbi');

-- Inserção de 15 entregadores
INSERT INTO ENTREGADOR (cpf, nome, telefone, email, cnh, tipo_veiculo, placa_veiculo, status_disponibilidade, avaliacao_media) VALUES
('10987654321', 'José da Silva', '11999887766', 'jose.silva@delivery.com', '12345678901', 'Motocicleta', 'ABC1234', 'disponível', 4.8),
('20987654321', 'Pedro Santos', '11888776655', 'pedro.santos@delivery.com', '23456789012', 'Motocicleta', 'DEF5678', 'disponível', 4.6),
('30987654321', 'Lucas Oliveira', '11777665544', 'lucas.oliveira@delivery.com', '34567890123', 'Bicicleta', 'GHI9012', 'ocupado', 4.9),
('40987654321', 'Rafael Costa', '11666554433', 'rafael.costa@delivery.com', '45678901234', 'Motocicleta', 'JKL3456', 'disponível', 4.7),
('50987654321', 'Thiago Lima', '11555443322', 'thiago.lima@delivery.com', '56789012345', 'Carro', 'MNO7890', 'offline', 4.5),
('60987654321', 'Anderson Rocha', '11444332211', 'anderson.rocha@delivery.com', '67890123456', 'Motocicleta', 'PQR1234', 'disponível', 4.8),
('70987654321', 'Felipe Martins', '11333221100', 'felipe.martins@delivery.com', '78901234567', 'Bicicleta', 'STU5678', 'ocupado', 4.9),
('80987654321', 'Gabriel Pereira', '11222110099', 'gabriel.pereira@delivery.com', '89012345678', 'Motocicleta', 'VWX9012', 'disponível', 4.6),
('90987654321', 'Rodrigo Alves', '11111009988', 'rodrigo.alves@delivery.com', '90123456789', 'Carro', 'YZA3456', 'disponível', 4.7),
('01987654321', 'Leonardo Silva', '11000998877', 'leonardo.silva@delivery.com', '01234567890', 'Motocicleta', 'BCD7890', 'offline', 4.4),
('11987654322', 'Mateus Santos', '11999888777', 'mateus.santos@delivery.com', '11223344556', 'Bicicleta', 'EFG1234', 'disponível', 4.8),
('21987654322', 'Gustavo Lima', '11888777666', 'gustavo.lima@delivery.com', '22334455667', 'Motocicleta', 'HIJ5678', 'ocupado', 4.9),
('31987654322', 'Vinicius Costa', '11777666555', 'vinicius.costa@delivery.com', '33445566778', 'Carro', 'KLM9012', 'disponível', 4.6),
('41987654322', 'Daniel Oliveira', '11666555444', 'daniel.oliveira@delivery.com', '44556677889', 'Motocicleta', 'NOP3456', 'disponível', 4.7),
('51987654322', 'Eduardo Pereira', '11555444333', 'eduardo.pereira@delivery.com', '55667788990', 'Bicicleta', 'QRS7890', 'offline', 4.5);

-- Inserção de 15 promoções
INSERT INTO PROMOCAO (nome_promocao, descricao, tipo_desconto, valor_desconto, data_inicio, data_fim, valor_minimo_pedido, ativa) VALUES
('Desconto Primeira Compra', 'Ganhe 20% de desconto na sua primeira compra', 'percentual', 20.00, '2025-01-01', '2025-12-31', 30.00, TRUE),
('Frete Grátis', 'Frete grátis para pedidos acima de R$ 50', 'valor_fixo', 8.00, '2025-01-01', '2025-06-30', 50.00, TRUE),
('Terça Econômica', 'Toda terça-feira 15% OFF', 'percentual', 15.00, '2025-01-07', '2025-12-30', 25.00, TRUE),
('Combo Família', 'R$ 10 de desconto em pedidos acima de R$ 80', 'valor_fixo', 10.00, '2025-01-01', '2025-03-31', 80.00, TRUE),
('Happy Hour', '25% OFF das 17h às 19h', 'percentual', 25.00, '2025-01-01', '2025-12-31', 20.00, TRUE),
('Weekend Special', 'Fim de semana com 12% de desconto', 'percentual', 12.00, '2025-01-04', '2025-12-28', 35.00, TRUE),
('Cupom Amigo', 'Indique um amigo e ganhe R$ 15', 'valor_fixo', 15.00, '2025-01-01', '2025-12-31', 40.00, TRUE),
('Black Friday', 'Mega desconto de 30%', 'percentual', 30.00, '2025-11-25', '2025-11-29', 50.00, FALSE),
('Dia das Mães', 'Especial Dia das Mães - 18%', 'percentual', 18.00, '2025-05-08', '2025-05-12', 45.00, FALSE),
('Volta às Aulas', 'R$ 12 OFF para estudantes', 'valor_fixo', 12.00, '2025-02-01', '2025-02-28', 30.00, TRUE),
('Aniversário App', 'Celebre conosco - 22% OFF', 'percentual', 22.00, '2025-06-01', '2025-06-07', 40.00, FALSE),
('Meio da Semana', 'Quarta e quinta com desconto', 'percentual', 10.00, '2025-01-01', '2025-12-31', 25.00, TRUE),
('Madrugada Delivery', 'Pedidos após 22h ganham desconto', 'valor_fixo', 6.00, '2025-01-01', '2025-12-31', 30.00, TRUE),
('Compra Recorrente', 'Cliente fiel ganha mais', 'percentual', 8.00, '2025-01-01', '2025-12-31', 35.00, TRUE),
('Flash Sale', 'Promoção relâmpago - apenas hoje!', 'percentual', 35.00, '2025-06-22', '2025-06-22', 60.00, FALSE);

# Tabela com dependência simples
-- Inserção de endereços (pelo menos 1 por cliente, alguns com múltiplos endereços)
INSERT INTO ENDERECO (cpf_cliente, numero_endereco, rua, numero, complemento, bairro, cidade, cep, tipo_endereco, endereco_principal) VALUES
('12345678901', 1, 'Rua Augusta', '1234', 'Apto 101', 'Bela Vista', 'São Paulo', '01310100', 'residencial', TRUE),
('23456789012', 1, 'Av. Brigadeiro Faria Lima', '2500', 'Sala 15', 'Vila Olímpia', 'São Paulo', '04038001', 'comercial', TRUE),
('34567890123', 1, 'Rua dos Pinheiros', '800', NULL, 'Pinheiros', 'São Paulo', '05407002', 'residencial', TRUE),
('45678901234', 1, 'Av. Paulista', '1500', 'Cobertura', 'Jardim Paulista', 'São Paulo', '01452000', 'residencial', TRUE),
('56789012345', 1, 'Rua Fidêncio Ramos', '195', 'Apto 45', 'Vila Nova Conceição', 'São Paulo', '04094050', 'residencial', TRUE),
('67890123456', 1, 'Rua da Mooca', '3456', NULL, 'Mooca', 'São Paulo', '03102001', 'residencial', TRUE),
('78901234567', 1, 'Av. Cruzeiro do Sul', '1000', 'Bloco B', 'Santana', 'São Paulo', '02035001', 'residencial', TRUE),
('89012345678', 1, 'Rua Domingos de Morais', '2500', 'Casa', 'Campo Belo', 'São Paulo', '05650000', 'residencial', TRUE),
('90123456789', 1, 'Rua XV de Novembro', '300', 'Loja 12', 'Centro', 'São Paulo', '01239001', 'comercial', TRUE),
('01234567890', 1, 'Av. Santo Amaro', '4500', 'Apto 78', 'Brooklin', 'São Paulo', '04567890', 'residencial', TRUE),
('11223344556', 1, 'Rua Butantã', '567', NULL, 'Butantã', 'São Paulo', '05432100', 'residencial', TRUE),
('22334455667', 1, 'Av. Celso Garcia', '2000', 'Apto 23', 'Tatuapé', 'São Paulo', '03456789', 'residencial', TRUE),
('33445566778', 1, 'Rua Galvão Bueno', '150', 'Sobrado', 'Liberdade', 'São Paulo', '01234567', 'residencial', TRUE),
('44556677889', 1, 'Rua Harmonia', '800', 'Casa 2', 'Vila Madalena', 'São Paulo', '02345678', 'residencial', TRUE),
('55667788990', 1, 'Av. Giovanni Gronchi', '3000', 'Apto 150', 'Morumbi', 'São Paulo', '06789012', 'residencial', TRUE),
-- Alguns endereços secundários
('12345678901', 2, 'Rua dos Pinheiros', '1200', 'Sala 05', 'Pinheiros', 'São Paulo', '05407002', 'comercial', FALSE),
('23456789012', 2, 'Rua Augusta', '2800', 'Apto 88', 'Bela Vista', 'São Paulo', '01310100', 'residencial', FALSE);

-- Inserção de 15 restaurantes
INSERT INTO RESTAURANTE_NORMALIZADO (cnpj, nome_fantasia, razao_social, email, telefone, rua_endereco, numero_endereco, cep_endereco, taxa_entrega, tempo_preparo_medio, horario_abertura, horario_fechamento, status_funcionamento, avaliacao_media, codigo_categoria) VALUES
('12345678000191', 'Pizzaria Bella Napoli', 'Bella Napoli Pizzas Ltda', 'contato@bellanapoli.com', '1133334444', 'Rua Augusta', '1500', '01310100', 8.90, 35, '18:00', '00:00', 'aberto', 4.5, 1),
('23456789000192', 'Burger Masters', 'Masters Hamburgueria Ltda', 'pedidos@burgermasters.com', '1144445555', 'Av. Faria Lima', '2800', '04038001', 6.50, 25, '11:00', '23:00', 'aberto', 4.7, 2),
('34567890000193', 'Sushi Zen', 'Zen Culinária Japonesa Ltda', 'sac@sushizen.com', '1155556666', 'Rua dos Pinheiros', '900', '05407002', 12.00, 40, '19:00', '01:00', 'fechado', 4.8, 3),
('45678901000194', 'Nonna Italiana', 'Nonna Gastronomia Italiana SA', 'reservas@nonna.com', '1166667777', 'Av. Paulista', '1800', '01452000', 10.50, 45, '12:00', '22:00', 'aberto', 4.6, 4),
('56789012000195', 'Sabor Caseiro', 'Sabor Caseiro Restaurante Ltda', 'delivery@saborcaseiro.com', '1177778888', 'Rua Fidêncio Ramos', '300', '04094050', 7.00, 30, '11:00', '15:00', 'fechado', 4.4, 5),
('67890123000196', 'Dragon Palace', 'Dragon Palace Culinária Chinesa', 'dragon@palace.com', '1188889999', 'Rua da Mooca', '4000', '03102001', 9.50, 35, '18:30', '23:30', 'aberto', 4.5, 6),
('78901234000197', 'El Mariachi', 'El Mariachi Restaurante Mexicano', 'hola@elmariachi.com', '1199990000', 'Av. Cruzeiro do Sul', '1200', '02035001', 8.00, 28, '17:00', '00:00', 'aberto', 4.3, 7),
('89012345000198', 'Green Life', 'Green Life Alimentação Saudável', 'verde@greenlife.com', '1100001111', 'Rua Domingos de Morais', '2800', '05650000', 5.50, 20, '07:00', '21:00', 'aberto', 4.9, 8),
('90123456000199', 'Habib´s Centro', 'Habibs Fast Food Centro Ltda', 'centro@habibs.com', '1111112222', 'Rua XV de Novembro', '400', '01239001', 4.90, 15, '10:00', '22:00', 'pausado', 4.2, 9),
('01234567000100', 'Açaí da Praia', 'Açaí da Praia Sucos e Vitaminas', 'praia@acaidapraia.com', '1122223333', 'Av. Santo Amaro', '4800', '04567890', 6.00, 10, '08:00', '20:00', 'aberto', 4.6, 10),
('11223344000101', 'Doce Tentação', 'Doce Tentação Confeitaria Ltda', 'doces@tentacao.com', '1133334444', 'Rua Butantã', '700', '05432100', 7.50, 25, '14:00', '22:00', 'aberto', 4.7, 11),
('22334455000102', 'Mar & Terra', 'Mar e Terra Frutos do Mar Ltda', 'mar@terra.com', '1144445555', 'Av. Celso Garcia', '2200', '03456789', 11.00, 50, '12:00', '22:00', 'fechado', 4.8, 12),
('33445566000103', 'Churrascaria Gaúcha', 'Gaúcha Churrascaria e Grill', 'gaucha@churrasco.com', '1155556666', 'Rua Galvão Bueno', '200', '01234567', 9.00, 40, '11:30', '23:00', 'aberto', 4.5, 13),
('44556677000104', 'Fit & Fresh', 'Fit Fresh Alimentação Balanceada', 'fit@fresh.com', '1166667777', 'Rua Harmonia', '900', '02345678', 6.50, 18, '06:00', '20:00', 'aberto', 4.8, 14),
('55667788000105', 'Lanchonete do Zé', 'José da Silva Lanches ME', 'ze@lanchonete.com', '1177778888', 'Av. Giovanni Gronchi', '3200', '06789012', 5.00, 12, '16:00', '02:00', 'aberto', 4.1, 15);

-- Inserção de produtos (pelo menos 15, distribuídos entre os restaurantes)
INSERT INTO PRODUTO (nome, descricao, preco, categoria_produto, disponivel, tempo_preparo, foto_url, cnpj_restaurante) VALUES
-- Produtos da Pizzaria Bella Napoli
('Pizza Margherita', 'Molho de tomate, mussarela, manjericão fresco', 35.90, 'Pizza', TRUE, 30, 'https://exemplo.com/margherita.jpg', '12345678000191'),
('Pizza Calabresa', 'Molho de tomate, mussarela, calabresa, cebola', 38.90, 'Pizza', TRUE, 30, 'https://exemplo.com/calabresa.jpg', '12345678000191'),
('Pizza Portuguesa', 'Molho de tomate, mussarela, presunto, ovos, cebola', 42.90, 'Pizza', TRUE, 35, 'https://exemplo.com/portuguesa.jpg', '12345678000191'),

-- Produtos do Burger Masters
('X-Bacon Duplo', 'Dois hambúrgueres, bacon, queijo, alface, tomate', 28.90, 'Hambúrguer', TRUE, 20, 'https://exemplo.com/xbacon.jpg', '23456789000192'),
('Burger Vegano', 'Hambúrguer de grão-de-bico, vegetais frescos', 24.90, 'Hambúrguer', TRUE, 18, 'https://exemplo.com/vegano.jpg', '23456789000192'),
('Batata Frita Grande', 'Porção generosa de batatas fritas crocantes', 12.90, 'Acompanhamento', TRUE, 8, 'https://exemplo.com/batata.jpg', '23456789000192'),

-- Produtos do Sushi Zen
('Combo Sushi 20 peças', 'Seleção variada de sushi e sashimi', 65.90, 'Japonesa', TRUE, 35, 'https://exemplo.com/combo20.jpg', '34567890000193'),
('Yakisoba Tradicional', 'Macarrão com legumes e molho especial', 22.90, 'Japonesa', TRUE, 25, 'https://exemplo.com/yakisoba.jpg', '34567890000193'),
('Temaki Salmão', 'Cone de alga com salmão e cream cheese', 15.90, 'Japonesa', TRUE, 15, 'https://exemplo.com/temaki.jpg', '34567890000193'),

-- Produtos da Nonna Italiana
('Lasanha à Bolonhesa', 'Lasanha tradicional com molho bolonhesa', 32.90, 'Massa', TRUE, 40, 'https://exemplo.com/lasanha.jpg', '45678901000194'),
('Risotto de Camarão', 'Arroz arbóreo com camarões frescos', 45.90, 'Risotto', TRUE, 35, 'https://exemplo.com/risotto.jpg', '45678901000194'),

-- Produtos do Sabor Caseiro
('Feijoada Completa', 'Feijoada tradicional com acompanhamentos', 28.90, 'Brasileira', TRUE, 25, 'https://exemplo.com/feijoada.jpg', '56789012000195'),
('Bife à Parmegiana', 'Bife empanado com molho e queijo', 26.90, 'Brasileira', TRUE, 30, 'https://exemplo.com/parmegiana.jpg', '56789012000195'),

-- Produtos do Dragon Palace
('Frango Xadrez', 'Frango em cubos com amendoim e pimentão', 24.90, 'Chinesa', TRUE, 25, 'https://exemplo.com/xadrez.jpg', '67890123000196'),
('Rolinho Primavera (8 unid)', 'Rolinhos crocantes com recheio de vegetais', 18.90, 'Entrada', TRUE, 15, 'https://exemplo.com/rolinho.jpg', '67890123000196'),

-- Produtos do Green Life
('Salada Caesar Vegana', 'Mix de folhas com molho caesar vegano', 19.90, 'Salada', TRUE, 10, 'https://exemplo.com/caesar.jpg', '89012345000198'),
('Bowl Proteico', 'Quinoa, grão-de-bico, vegetais e tahine', 22.90, 'Bowl', TRUE, 15, 'https://exemplo.com/bowl.jpg', '89012345000198');

-- Inserção de uso de promoções pelos clientes
INSERT INTO CLIENTE_PROMOCAO (cpf_cliente, codigo_promocao, data_uso, valor_desconto) VALUES
('12345678901', 1, '2025-06-15 19:30:00', 7.18),
('23456789012', 2, '2025-06-16 20:15:00', 8.00),
('34567890123', 3, '2025-06-18 21:00:00', 5.38),
('45678901234', 4, '2025-06-19 19:45:00', 10.00),
('56789012345', 5, '2025-06-20 18:30:00', 7.23),
('67890123456', 6, '2025-06-21 20:30:00', 4.67),
('78901234567', 7, '2025-06-15 19:00:00', 15.00),
('89012345678', 12, '2025-06-17 20:45:00', 2.89),
('90123456789', 14, '2025-06-19 21:15:00', 2.32),
('01234567890', 1, '2025-06-20 19:20:00', 8.98),
('11223344556', 13, '2025-06-21 23:30:00', 6.00),
('22334455667', 3, '2025-06-18 21:45:00', 6.74),
('33445566778', 6, '2025-06-16 20:00:00', 5.22),
('44556677889', 5, '2025-06-20 18:15:00', 6.45),
('55667788990', 12, '2025-06-17 20:30:00', 3.48);

# Tabelas com dependências multiplas
-- Inserção de 15 pedidos
INSERT INTO PEDIDO (cpf_cliente, cpf_entregador, numero_endereco, status_pedido, valor_produtos, valor_entrega, valor_desconto, valor_total, observacoes_gerais, tempo_estimado_entrega) VALUES
('12345678901', '10987654321', 1, 'entregue', 35.90, 8.90, 7.18, 37.62, 'Sem cebola na pizza', 45),
('23456789012', '20987654321', 1, 'entregue', 53.80, 6.50, 8.00, 52.30, 'Entregar na portaria', 35),
('34567890123', '30987654321', 1, 'saiu_entrega', 35.80, 12.00, 5.38, 42.42, 'Apartamento 45', 50),
('45678901234', '40987654321', 1, 'entregue', 90.80, 10.50, 10.00, 91.30, 'Cobertura - Interfone 1500', 60),
('56789012345', '50987654321', 1, 'entregue', 28.90, 7.00, 7.23, 28.67, 'Casa com portão azul', 40),
('67890123456', '60987654321', 1, 'preparando', 38.90, 9.50, 4.67, 43.73, NULL, 35),
('78901234567', '70987654321', 1, 'entregue', 43.80, 8.00, 15.00, 36.80, 'Bloco B - Apartamento térreo', 42),
('89012345678', '80987654321', 1, 'entregue', 28.90, 5.50, 2.89, 31.51, 'Deixar com o porteiro', 25),
('90123456789', '90987654321', 1, 'cancelado', 29.00, 4.90, 2.32, 31.58, 'Cliente cancelou', 20),
('01234567890', '01987654321', 1, 'entregue', 44.80, 6.00, 8.98, 41.82, 'Apartamento 78', 30),
('11223344556', '11987654322', 1, 'pronto', 25.90, 7.50, 6.00, 27.40, 'Tocar campainha 2x', 28),
('22334455667', '21987654322', 1, 'entregue', 44.90, 11.00, 6.74, 49.16, 'Casa com jardim na frente', 55),
('33445566778', '31987654322', 1, 'confirmado', 43.50, 9.00, 5.22, 47.28, 'Sobrado amarelo', 45),
('44556677889', '41987654322', 1, 'entregue', 25.80, 6.50, 6.45, 25.85, 'Casa 2 - fundos', 22),
('55667788990', '51987654322', 1, 'entregue', 34.80, 5.00, 3.48, 36.32, 'Apartamento 150 - Torre A', 18);

# Tabelas dependentes de pedido 
-- Inserção dos itens de cada pedido
INSERT INTO ITEM_PEDIDO (numero_pedido, codigo_produto, quantidade, preco_unitario, observacoes_item) VALUES
-- Pedido 1: Pizza Margherita
(1, 1, 1, 35.90, 'Sem cebola'),

-- Pedido 2: X-Bacon Duplo + Batata Frita
(2, 4, 1, 28.90, 'Ponto da carne bem passado'),
(2, 6, 1, 12.90, 'Batata bem crocante'),
(2, 5, 1, 12.00, 'Molho à parte'),

-- Pedido 3: Yakisoba + Temaki
(3, 8, 1, 22.90, 'Pouco sal'),
(3, 9, 1, 12.90, 'Sem wasabi'),

-- Pedido 4: Lasanha + Risotto (pedido grande)
(4, 10, 2, 32.90, 'Uma sem pimenta'),
(4, 11, 1, 25.00, 'Camarões grandes'),

-- Pedido 5: Feijoada Completa
(5, 12, 1, 28.90, 'Com todos os acompanhamentos'),

-- Pedido 6: Pizza Calabresa
(6, 2, 1, 38.90, 'Massa fina'),

-- Pedido 7: Frango Xadrez + Rolinho Primavera
(7, 14, 1, 24.90, 'Pouco picante'),
(7, 15, 1, 18.90, 'Molho agridoce à parte'),

-- Pedido 8: Bife à Parmegiana
(8, 13, 1, 28.90, 'Arroz solto'),

-- Pedido 9: Combo Sushi (pedido cancelado)
(9, 7, 1, 29.00, NULL),

-- Pedido 10: Salada Caesar + Bowl Proteico
(10, 16, 1, 19.90, 'Molho à parte'),
(10, 17, 1, 24.90, 'Sem coentro'),

-- Pedido 11: Pizza Portuguesa
(11, 3, 1, 25.90, 'Ovos bem cozidos'),

-- Pedido 12: Lasanha + Pizza Margherita
(12, 10, 1, 32.90, NULL),
(12, 1, 1, 12.00, 'Tamanho individual'),

-- Pedido 13: Risotto de Camarão
(13, 11, 1, 43.50, 'Camarões frescos'),

-- Pedido 14: Bowl Proteico
(14, 17, 1, 25.80, 'Extra tahine'),

-- Pedido 15: X-Bacon + Batata
(15, 4, 1, 22.90, 'Sem maionese'),
(15, 6, 1, 11.90, 'Porção média');

-- Inserção dos pagamentos dos pedidos
INSERT INTO PAGAMENTO (numero_pedido, forma_pagamento, valor, status_pagamento, data_processamento) VALUES
(1, 'pix', 37.62, 'aprovado', '2025-06-15 19:32:00'),
(2, 'cartao_credito', 52.30, 'aprovado', '2025-06-16 20:17:00'),
(3, 'cartao_debito', 42.42, 'aprovado', '2025-06-18 21:02:00'),
(4, 'cartao_credito', 91.30, 'aprovado', '2025-06-19 19:47:00'),
(5, 'dinheiro', 28.67, 'aprovado', '2025-06-20 18:32:00'),
(6, 'pix', 43.73, 'processando', '2025-06-21 20:32:00'),
(7, 'cartao_credito', 36.80, 'aprovado', '2025-06-15 19:02:00'),
(8, 'cartao_debito', 31.51, 'aprovado', '2025-06-17 20:47:00'),
(9, 'pix', 31.58, 'recusado', '2025-06-19 21:17:00'),
(10, 'cartao_credito', 41.82, 'aprovado', '2025-06-20 19:22:00'),
(11, 'dinheiro', 27.40, 'pendente', '2025-06-21 23:32:00'),
(12, 'pix', 49.16, 'aprovado', '2025-06-18 21:47:00'),
(13, 'cartao_credito', 47.28, 'aprovado', '2025-06-16 20:02:00'),
(14, 'cartao_debito', 25.85, 'aprovado', '2025-06-20 18:17:00'),
(15, 'pix', 36.32, 'aprovado', '2025-06-17 20:32:00');

-- Inserção de avaliações de restaurantes (apenas para pedidos entregues)
INSERT INTO AVALIACAO_RESTAURANTE (numero_pedido, nota_restaurante, comentario_restaurante, nota_comida, nota_tempo_entrega, data_avaliacao) VALUES
(1, 5, 'Pizza excelente, massa perfeita!', 5, 4, '2025-06-15 20:15:00'),
(2, 4, 'Hambúrguer saboroso, batata poderia ser mais crocante', 4, 5, '2025-06-16 21:00:00'),
(4, 5, 'Pratos maravilhosos, muito bem preparados', 5, 4, '2025-06-19 21:30:00'),
(5, 3, 'Feijoada boa mas veio fria', 3, 2, '2025-06-20 19:45:00'),
(7, 4, 'Comida chinesa autêntica, gostei bastante', 4, 4, '2025-06-15 20:30:00'),
(8, 4, 'Parmegiana bem temperada, arroz no ponto', 4, 5, '2025-06-17 21:30:00'),
(10, 5, 'Comida saudável e saborosa, superou expectativas', 5, 5, '2025-06-20 20:10:00'),
(12, 4, 'Lasanha deliciosa, pizza um pouco salgada', 4, 3, '2025-06-18 22:45:00'),
(14, 5, 'Bowl muito nutritivo e gostoso', 5, 5, '2025-06-20 19:00:00'),
(15, 3, 'Hambúrguer ok, nada excepcional', 3, 4, '2025-06-17 21:15:00');

-- Inserção de avaliações de entregadores (apenas para pedidos entregues)
INSERT INTO AVALIACAO_ENTREGADOR (numero_pedido, nota_entregador, comentario_entregador, nota_cordialidade, nota_tempo, data_avaliacao) VALUES
(1, 5, 'Entregador muito educado e pontual', 5, 5, '2025-06-15 20:15:00'),
(2, 4, 'Entrega rápida, entregador simpático', 4, 5, '2025-06-16 21:00:00'),
(4, 4, 'Profissional, cuidadoso com o pedido', 4, 4, '2025-06-19 21:30:00'),
(5, 2, 'Entregador mal educado, demorou muito', 2, 1, '2025-06-20 19:45:00'),
(7, 5, 'Excelente entregador, muito prestativo', 5, 4, '2025-06-15 20:30:00'),
(8, 4, 'Entrega dentro do prazo, entregador cordial', 4, 4, '2025-06-17 21:30:00'),
(10, 5, 'Entregador gentil e cuidadoso', 5, 5, '2025-06-20 20:10:00'),
(12, 3, 'Entregador normal, sem problemas', 3, 3, '2025-06-18 22:45:00'),
(14, 5, 'Muito rápido e educado', 5, 5, '2025-06-20 19:00:00'),
(15, 4, 'Entregador ok, chegou no horário', 4, 4, '2025-06-17 21:15:00');