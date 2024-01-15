Alter table pokemon drop column attack_score;
Alter table pokemon drop column defence_score;
Alter table pokemon drop column	hp_score;
Alter table pokemon drop column special_attack_score;
Alter table pokemon drop column special_defence_score;
Alter table pokemon drop column is_active;

select * from pokemon_type where pokemon_id=9;

select * from pokemon;
select * from type;

SET SQL_SAFE_UPDATES = 0;

update pokemon set isActive = true;

SET SQL_SAFE_UPDATES = 1;

alter table pokemon_type drop column id_porkemon_type;

alter table pokemon rename column special_atack_score to special_attack_score;
alter table pokemon rename column specialDefenseScore to special_defence_score;

alter table pokemon drop column attack_score;
alter table pokemon rename column attackScore to attack_score;

alter table pokemon drop column defence_score;
alter table pokemon rename column defenseScore to defense_score;

alter table pokemon drop column is_active;
alter table pokemon rename column isActive to is_active;

alter table pokemon drop column hp_score;
alter table pokemon rename column hpScore to hp_score;

alter table pokemon drop column defence_score;
alter table pokemon rename column defense_score to defence_score;

SELECT p. *, pt.pokemon_type_level, t.name FROM pokemon p JOIN pokemon_type pt ON p.id_pokemon = pt.pokemon.id_pokemon JOIN Type t ON pt.type.id_type = t.id_type;

SELECT 
    p.*,
    pt.pokemon_type_level,
    t.name as type_name
FROM 
    pokemon p
JOIN 
    pokemon_type pt ON p.id_pokemon = pt.pokemon_id
JOIN 
    type t ON pt.type_id = t.id_type;

truncate table pokemon_type;
