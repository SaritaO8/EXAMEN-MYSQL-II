-- CONSULTA 1
-- Nombre del vendedor y cantidad total de propiedades vendidas
SELECT v.nombre, COUNT(p.id) AS total_propiedades
FROM vendedores v
JOIN propiedades p ON v.id = p.vendedor_id
GROUP BY v.nombre;
