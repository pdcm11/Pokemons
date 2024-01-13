package com.ips.tpsi.pokemonwebapp.bc;

import com.ips.tpsi.pokemonwebapp.entity.Pokemon;
import com.ips.tpsi.pokemonwebapp.repository.PokemonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

// a anotação Service serve para definir serviços, neste caso o nosso BC que é onde está a componente de lógica de negócio

@Service
public class WebBc {

    @Autowired
    PokemonRepository repository;

    public void getRepositoryPokemonInfo(
            Integer number,
            String name,
            Integer hpScore,
            Integer attackScore,
            Integer defenceScore,
            Integer specialAttackScore,
            Integer speed,
            Integer generation,
            Boolean legendary,
            Boolean isActive
            ) {
        List<Pokemon> pokemonList = repository.findAll(); // select * from pokemon;

        // método 1 - construir o objeto
        Pokemon pokemon1 = new Pokemon();
        pokemon1.setNumber(number);
        pokemon1.setName(name);
        pokemon1.setHpScore(hpScore);
        pokemon1.setAttackScore(attackScore);
        pokemon1.setDefenceScore(defenceScore);
        pokemon1.setSpecialAttackScore(specialAttackScore);
        pokemon1.setSpeed(speed);
        pokemon1.setGeneration(generation);
        pokemon1.setLegendary(legendary);
        pokemon1.setIsActive(isActive);

        repository.save(pokemon1);

        // método 2 - construir o objeto c/ o que vem da bd + a alteração
        Pokemon pokemon = repository.findPokemonByName(name);
        repository.save(pokemon);
    }

    public List<Pokemon> listAllPokemons() {
        return repository.findAll();
    }

    public List<Object[]> listAllPokemonsWithTypeName() {
        return repository.findAllWithTypeName();
    }

    public Pokemon getRepositoryPokemonInfoByName(String name) {
        return repository.findPokemonByName(name);
    }

}