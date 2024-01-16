package com.ips.tpsi.pokemonwebapp.bc;


import com.ips.tpsi.pokemonwebapp.entity.Pokemon;
import com.ips.tpsi.pokemonwebapp.entity.PokemonType;
import com.ips.tpsi.pokemonwebapp.entity.Type;
import com.ips.tpsi.pokemonwebapp.repository.PokemonRepository;
import com.ips.tpsi.pokemonwebapp.repository.PokemonTypeRepository;
import com.ips.tpsi.pokemonwebapp.repository.TypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;
import java.util.stream.Collectors;


// a anotação Service serve para definir serviços, neste caso o nosso BC que é onde está a componente de lógica de negócio

@Service
public class WebBc {

    @Autowired
    PokemonRepository pokemonRepository;

    @Autowired
    PokemonTypeRepository pokemonTypeRepository;

    @Autowired
    TypeRepository typeRepository;


    public void createPokemon(
            Integer number,
            String name,
            Integer hpScore,
            Integer attackScore,
            Integer defenceScore,
            Integer specialAttackScore,
            Integer specialDefenceScore,
            Integer speed,
            Integer generation,
            Boolean legendary,
            Boolean isActive
    ) {

        if (legendary == null) {
            legendary = false;
        }

        Pokemon newPokemon = new Pokemon();
        newPokemon.setNumber(number);
        newPokemon.setName(name);
        newPokemon.setHpScore(hpScore);
        newPokemon.setAttackScore(attackScore);
        newPokemon.setDefenceScore(defenceScore);
        newPokemon.setSpecialAttackScore(specialAttackScore);
        newPokemon.setSpecialDefenceScore(specialDefenceScore);
        newPokemon.setSpeed(speed);
        newPokemon.setGeneration(generation);
        newPokemon.setLegendary(legendary);
        newPokemon.setIsActive(isActive);

        pokemonRepository.save(newPokemon);
    }



    public List<Pokemon> listActivePokemons() {
        return pokemonRepository.findAll().stream()
                .filter(Pokemon::getIsActive)
                .collect(Collectors.toList());
    }

    public List<Pokemon> getDisabledPokemons() {
        return pokemonRepository.findAll().stream()
                .filter(pokemon -> !pokemon.getIsActive())
                .collect(Collectors.toList());
    }

    public List<Pokemon> listAllPokemons() {
        return listActivePokemons();
    }


    public Pokemon getPokemonById(Long id) {
        return pokemonRepository.findPokemonByIdPokemon(id);
    }

    public void editPokemon(Long id, Pokemon updatedPokemon) throws NoSuchElementException {
        Optional<Pokemon> optionalPokemon = pokemonRepository.findById(id);

        if (optionalPokemon.isPresent()) {
            Pokemon existingPokemon = optionalPokemon.get();

            existingPokemon.setName(updatedPokemon.getName());
            existingPokemon.setHpScore(updatedPokemon.getHpScore());
            existingPokemon.setAttackScore(updatedPokemon.getAttackScore());
            existingPokemon.setSpecialDefenceScore(updatedPokemon.getSpecialDefenceScore());
            existingPokemon.setSpecialAttackScore(updatedPokemon.getSpecialAttackScore());
            existingPokemon.setSpeed(updatedPokemon.getSpeed());
            existingPokemon.setGeneration(updatedPokemon.getGeneration());
            existingPokemon.setLegendary(updatedPokemon.getLegendary());

            pokemonRepository.save(existingPokemon); // Salvar as alterações no banco de dados
        } else {
            throw new NoSuchElementException("Pokemon with ID " + id + " not found.");
        }
    }

    public List<Pokemon> searchPokemonByName(String name) {
        return pokemonRepository.findPokemonByNameContainingIgnoreCase(name);
    }

    public void deactivatePokemon(Long id) {
        Optional<Pokemon> optionalPokemon = pokemonRepository.findById(id);

        if (optionalPokemon.isPresent()) {
            Pokemon pokemon = optionalPokemon.get();
            pokemon.setIsActive(false);
            pokemonRepository.save(pokemon);
        } else {
            throw new NoSuchElementException("Pokemon with ID " + id + " not found.");
        }
    }

    public void activatePokemon(Long id) {
        Optional<Pokemon> optionalPokemon = pokemonRepository.findById(id);

        if (optionalPokemon.isPresent()) {
            Pokemon pokemon = optionalPokemon.get();
            pokemon.setIsActive(true);
            pokemonRepository.save(pokemon);
        } else {
            throw new NoSuchElementException("Pokemon with ID " + id + " not found.");
        }
    }

    public Pokemon getRepositoryPokemonInfoByName(String name) {
        return pokemonRepository.findPokemonByName(name);
    }

    public List<Type> getAllTypes() {
        return typeRepository.findAll();
    }


    public List<Type> getPokemonType(Long id) {
        return pokemonRepository.findTypesByPokemonId(id);
    }

    public void editPokemonType(PokemonType pokemonType) {
        pokemonTypeRepository.save(pokemonType);
    }
}
