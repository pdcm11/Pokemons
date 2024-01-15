package com.ips.tpsi.pokemonwebapp.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "pokemon_type")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Pokemon_Type {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_pokemon_type")
    private Long idPokemonType;

    @Column(name = "pokemon_type_level")
    private Integer pokemonTypeLevel;

    @ManyToOne
    @JoinColumn(name = "pokemon_id", referencedColumnName = "id_pokemon")
    private Pokemon pokemon;

    @ManyToOne
    @JoinColumn(name = "type_id", referencedColumnName = "id_type")
    private Type type;

}
