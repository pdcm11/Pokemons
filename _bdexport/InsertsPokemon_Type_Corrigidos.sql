truncate table pokemon_type;

INSERT INTO pokemon_type (pokemon_type_level, pokemon_id, type_id) 
SELECT 1, p.id_pokemon, t.id_type 
FROM pokemon_import pi
INNER JOIN type t ON t.name = pi.`Type 1`
INNER JOIN pokemon p ON p.name = pi.Name;

INSERT INTO pokemon_type (pokemon_type_level, pokemon_id, type_id) 
SELECT 2, p.id_pokemon, t.id_type 
FROM pokemon_import pi
INNER JOIN type t ON t.name = pi.`Type 2`
INNER JOIN pokemon p ON p.name = pi.Name;
