-- CONSULTA 5
-- Crear vista resumen_ventas
CREATE VIEW resumen_ventas AS
SELECT 
    v.nombre AS vendedor,
    COUNT(ve.id) AS total_ventas,
    COUNT(DISTINCT ve.cliente_id) AS clientes_atendidos
FROM vendedores v
LEFT JOIN ventas ve ON v.id = ve.vendedor_id
GROUP BY v.nombre;