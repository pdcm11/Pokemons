package com.ips.tpsi.pokemonwebapp.repository;

import com.ips.tpsi.pokemonwebapp.entity.Type;
import org.springframework.data.jpa.repository.JpaRepository;
import com.ips.tpsi.pokemonwebapp.entity.Pokemon;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


// Repositório é apenas conhecido como repositório p/ o sprint por causa da anotação
@Repository
public interface PokemonRepository extends JpaRepository<Pokemon, Long> {

    Pokemon findPokemonByName(String name);

    Pokemon findPokemonByIdPokemon(Long idPokemon);


    @Query("SELECT pt.type FROM PokemonType pt WHERE pt.pokemon.idPokemon = :pokemonId")
    List<Type> findTypesByPokemonId(@Param("pokemonId") Long pokemonId);

    List<Pokemon> findPokemonByNameContainingIgnoreCase(String name);



}

