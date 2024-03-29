package com.ips.tpsi.pokemonwebapp.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "pokemon")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Pokemon {

    @Id
    @Column(name = "id_pokemon")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idPokemon;

    @Column(name = "number")
    private Integer number;

    @Column(name = "name")
    private String name;

    @Column(name = "hp_score")
    private Integer hpScore;

    @Column(name = "attack_score")
    private Integer attackScore;

    @Column(name = "defence_score")
    private Integer defenceScore;

    @Column(name = "special_attack_score")
    private Integer specialAttackScore;

    @Column(name = "special_defence_score")
    private Integer specialDefenceScore;

    @Column(name = "speed")
    private Integer speed;

    @Column(name = "generation")
    private Integer generation;

    @Column(name = "legendary")
    private Boolean legendary;

    @Column(name = "is_active")
    private Boolean isActive;

    @OneToMany(mappedBy = "pokemon", cascade = CascadeType.ALL)
    private List<PokemonType> types;

    @Transient
    private List<Long> selectedTypeIds;

    @Transient
    private Type firstType;

    @Transient
    private Type secondType;

 //   @OneToMany(mappedBy = "pokemon", cascade = CascadeType.ALL, orphanRemoval = true)
  //  private Set<PokemonType> pokemonTypes = new HashSet<>();



}
