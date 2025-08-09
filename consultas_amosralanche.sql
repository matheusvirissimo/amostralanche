use amostralanche;

-- 1: relatório de vendas por período
SELECT r.nome_fantasia, SUM(p.valor_total) as faturamento_total, COUNT(*) as total_pedidos FROM PEDIDO p JOIN RESTAURANTE_NORMALIZADO r ON p.cnpj_restaurante = r.cnpj WHERE p.data_hora_pedido >= '2024-01-01' AND p.data_hora_pedido <= '2024-12-31' AND p.status_pedido = 'entregue' GROUP BY r.nome_fantasia, r.cnpj ORDER BY faturamento_total DESC;


-- 2: Produtos mais vendidos por categoria
SELECT prod.categoria_produto, prod.nome, SUM(ip.quantidade) as total_vendido FROM ITEM_PEDIDO ip JOIN PRODUTO prod ON ip.codigo_produto = prod.codigo_produto JOIN PEDIDO p ON ip.numero_pedido = p.numero_pedido WHERE p.status_pedido = 'entregue' GROUP BY prod.categoria_produto, prod.nome, prod.codigo_produto ORDER BY prod.categoria_produto, total_vendido DESC;

-- 3: 
SELECT e.nome, e.cpf, COUNT(p.numero_pedido) as total_entregas, AVG(ae.nota_entregador) as media_avaliacoes FROM ENTREGADOR e JOIN PEDIDO p ON e.cpf = p.cpf_entregador LEFT JOIN AVALIACAO_ENTREGADOR ae ON p.numero_pedido = ae.numero_pedido WHERE p.status_pedido = 'entregue' GROUP BY e.nome, e.cpf ORDER BY total_entregas DESC, media_avaliacoes DESC;

-- 4: 
SELECT c.nome as nome_cliente, p.numero_pedido, p.data_hora_pedido, p.status_pedido, r.nome_fantasia, p.valor_total, pag.forma_pagamento, ar.nota_restaurante FROM CLIENTE c JOIN PEDIDO p ON c.cpf = p.cpf_cliente JOIN ENDERECO e ON c.cpf = e.cpf_cliente AND p.numero_endereco = e.numero_endereco JOIN RESTAURANTE_NORMALIZADO r ON p.cnpj_restaurante = r.cnpj LEFT JOIN PAGAMENTO pag ON p.numero_pedido = pag.numero_pedido LEFT JOIN AVALIACAO_RESTAURANTE ar ON p.numero_pedido = ar.numero_pedido WHERE c.cpf = '12345678901' ORDER BY p.data_hora_pedido DESC;

-- 5: 
SELECT cl.cidade, r.nome_fantasia, AVG(ar.nota_restaurante) as media_avaliacoes, COUNT(ar.nota_restaurante) as total_avaliacoes FROM RESTAURANTE_NORMALIZADO r JOIN CEP_LOCALIDADE cl ON r.cep_endereco = cl.cep LEFT JOIN PEDIDO p ON r.cnpj = p.cnpj_restaurante LEFT JOIN AVALIACAO_RESTAURANTE ar ON p.numero_pedido = ar.numero_pedido WHERE ar.nota_restaurante IS NOT NULL GROUP BY cl.cidade, r.nome_fantasia, r.cnpj HAVING COUNT(ar.nota_restaurante) >= 5 ORDER BY cl.cidade, media_avaliacoes DESC;

-- 6: 
SELECT pag.forma_pagamento, SUM(pag.valor) as total_faturamento, COUNT(*) as quantidade_transacoes FROM PAGAMENTO pag JOIN PEDIDO p ON pag.numero_pedido = p.numero_pedido WHERE p.status_pedido = 'entregue' GROUP BY pag.forma_pagamento ORDER BY total_faturamento DESC;

-- 7: 
SELECT r.nome_fantasia, AVG(p.tempo_estimado_entrega) as tempo_medio_entrega, COUNT() as total_entregas FROM PEDIDO p JOIN RESTAURANTE_NORMALIZADO r ON p.cnpj_restaurante = r.cnpj WHERE p.status_pedido = 'entregue' AND p.tempo_estimado_entrega IS NOT NULL GROUP BY r.nome_fantasia, r.cnpj HAVING COUNT() >= 10 ORDER BY tempo_medio_entrega ASC;

-- 8: 
SELECT c.nome, c.cpf, COUNT(p.numero_pedido) as total_pedidos, SUM(p.valor_total) as valor_gasto_total FROM CLIENTE c JOIN PEDIDO p ON c.cpf = p.cpf_cliente WHERE p.status_pedido IN ('entregue', 'confirmado', 'preparando') GROUP BY c.nome, c.cpf ORDER BY total_pedidos DESC, valor_gasto_total DESC LIMIT 20;

-- 9:
SELECT r.nome_fantasia, prod.nome as nome_produto, prod.categoria_produto, prod.preco FROM PRODUTO prod JOIN RESTAURANTE_NORMALIZADO r ON prod.cnpj_restaurante = r.cnpj WHERE prod.disponivel = false ORDER BY r.nome_fantasia, prod.categoria_produto;

-- 10:
SELECT c.nome as nome_cliente, r.nome_fantasia, p.data_hora_pedido, p.valor_total, p.observacoes_gerais FROM PEDIDO p JOIN CLIENTE c ON p.cpf_cliente = c.cpf JOIN RESTAURANTE_NORMALIZADO r ON p.cnpj_restaurante = r.cnpj WHERE p.status_pedido = 'cancelado' AND p.data_hora_pedido >= '2024-01-01' AND p.data_hora_pedido <= '2024-12-31' ORDER BY p.data_hora_pedido DESC;
