package com.ips.tpsi.pokemonwebapp.repository;
import com.ips.tpsi.pokemonwebapp.entity.Type;
import org.springframework.data.jpa.repository.JpaRepository;
import com.ips.tpsi.pokemonwebapp.entity.Pokemon;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

import com.ips.tpsi.pokemonwebapp.entity.Type;
import org.springframework.data.jpa.repository.JpaRepository;


// Repositório é apenas conhecido como repositório p/ o sprint por causa da anotação
@Repository
public interface PokemonRepository extends JpaRepository<Pokemon, Long> {

    Pokemon findPokemonByName(String name);

    Pokemon findPokemonByIdPokemon(Long idPokemon);

    @Query("SELECT pt.pokemonTypeLevel, t.name FROM Pokemon_Type pt JOIN Type t ON pt.type.idType = t.idType WHERE pt.pokemon.idPokemon = :pokemonId")
    List<Object[]> findPokemonTypesById(@Param("pokemonId") Long pokemonId);

/////////////////////////////////////////

    @Query("SELECT pt.type FROM Pokemon_Type pt WHERE pt.pokemon.idPokemon = :pokemonId")
    List<Type> findTypesByPokemonId(@Param("pokemonId") Long pokemonId);

    List<Pokemon> findPokemonByNameContainingIgnoreCase(String name);

    @Query("SELECT t FROM Type t")
    List<Type> findAllTypes();

}

