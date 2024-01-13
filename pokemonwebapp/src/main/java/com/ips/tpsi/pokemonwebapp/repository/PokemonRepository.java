package com.ips.tpsi.pokemonwebapp.repository;
import com.ips.tpsi.pokemonwebapp.entity.Pokemon;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

// Repositório é apenas conhecido como repositório p/ o sprint por causa da anotação
@Repository
public interface PokemonRepository extends JpaRepository<Pokemon, Integer> {

    // acesso à base de dados para obter uma classe que representa os pokemons
    // -> Pokemon
    Pokemon findPokemonByName(String name);
}