package com.ips.tpsi.pokemonwebapp.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "pokemon")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Pokemon {

    @Id
    @Column(name = "id_pokemon")
    private Integer idPokemon;

    @Column(name = "number")
    private Integer number;

    @Column(name = "name")
    private String name;

    @Column(name = "hpScore")
    private Integer hpScore;

    @Column(name = "attackScore")
    private Integer attackScore;

    @Column(name = "defenceScore")
    private Integer defenceScore;

    @Column(name = "specialAttackScore")
    private Integer specialAttackScore;

    @Column(name = "specialDefenceScore")
    private Integer specialDefenceScore;

    @Column(name = "speed")
    private Integer speed;

    @Column(name = "generation")
    private Integer generation;

    @Column(name = "legendary")
    private Boolean legendary;

    @Column(name = "isActive")
    private Boolean isActive;
}
