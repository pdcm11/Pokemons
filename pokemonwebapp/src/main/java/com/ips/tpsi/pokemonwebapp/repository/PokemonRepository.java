package com.ips.tpsi.pokemonwebapp.repository;
import com.ips.tpsi.pokemonwebapp.entity.Pokemon;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

// Repositório é apenas conhecido como repositório p/ o sprint por causa da anotação
@Repository
public interface PokemonRepository extends JpaRepository<Pokemon, Long> {

    Pokemon findPokemonByName(String name);

    Pokemon findPokemonByIdPokemon (Long idPokemon);

    @Query("SELECT pt.pokemonTypeLevel, t.name FROM Pokemon_Type pt JOIN Type t ON pt.type.idType = t.idType WHERE pt.pokemon.idPokemon = :pokemonId")
    List<Object[]> findPokemonTypesById(@Param("pokemonId") Long pokemonId);

    @Query("SELECT p, pt.pokemonTypeLevel, t.name FROM Pokemon p JOIN Pokemon_Type pt ON p.idPokemon = pt.pokemon.idPokemon JOIN Type t ON pt.type.idType = t.idType")
    List<Object[]> findAllWithTypeName();

}
