_- CONSULTA 4
-- Todos los vendedores y sus propiedades (incluyendo los que no han vendido)
SELECT v.nombre, p.id AS propiedad_id
FROM vendedores v
LEFT JOIN propiedades p ON v.id = p.vendedor_id;

