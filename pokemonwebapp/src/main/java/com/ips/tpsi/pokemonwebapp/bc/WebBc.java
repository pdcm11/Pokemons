package com.ips.tpsi.pokemonwebapp.bc;

import com.ips.tpsi.pokemonwebapp.entity.Pokemon;
import com.ips.tpsi.pokemonwebapp.entity.Pokemon_Type;
import com.ips.tpsi.pokemonwebapp.entity.Type;
import com.ips.tpsi.pokemonwebapp.repository.PokemonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

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

    public Pokemon getPokemonById(Long id) {
        return repository.findPokemonByIdPokemon(id);
    }
    public void editPokemon(Long id, Pokemon updatedPokemon) throws NoSuchElementException {
        Optional<Pokemon> optionalPokemon = repository.findById(id);

        if (optionalPokemon.isPresent()) {
            Pokemon existingPokemon = optionalPokemon.get();

            // Atualizar os campos necessários
            existingPokemon.setName(updatedPokemon.getName());
            existingPokemon.setHpScore(updatedPokemon.getHpScore());
            existingPokemon.setAttackScore(updatedPokemon.getAttackScore());
            existingPokemon.setSpecialDefenceScore(updatedPokemon.getSpecialDefenceScore());
            existingPokemon.setSpecialAttackScore(updatedPokemon.getSpecialAttackScore());
            existingPokemon.setSpeed(updatedPokemon.getSpeed());
            existingPokemon.setGeneration(updatedPokemon.getGeneration());
            existingPokemon.setLegendary(updatedPokemon.getLegendary());


            repository.save(existingPokemon); // Salvar as alterações no banco de dados
        } else {
            throw new NoSuchElementException("Pokemon with ID " + id + " not found.");
        }
    }

    public List<Object[]> getPokemonTypesById(Long id) {
        return repository.findPokemonTypesById(id);
    }

    public Pokemon getRepositoryPokemonInfoByName(String name) {
        return repository.findPokemonByName(name);
    }

}