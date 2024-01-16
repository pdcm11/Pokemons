package com.ips.tpsi.pokemonwebapp.controller;
import com.ips.tpsi.pokemonwebapp.entity.Pokemon_Type;
import com.ips.tpsi.pokemonwebapp.entity.Type;
import com.ips.tpsi.pokemonwebapp.repository.PokemonRepository;
import org.springframework.ui.Model;
import com.ips.tpsi.pokemonwebapp.bc.WebBc;
import com.ips.tpsi.pokemonwebapp.entity.Pokemon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;
import java.util.stream.Collectors;

@Controller
public class WebController {

    @Autowired
    WebBc bc;
    @Autowired
    private PokemonRepository pokemon;

    @GetMapping("/createPokemon")
    public String showCreateForm(Model model) {
        return "createPokemon";
    }

    @PostMapping("/createPokemon")
    public String handleCreateForm(
            @RequestParam Integer number,
            @RequestParam String name,
            @RequestParam Integer hpScore,
            @RequestParam Integer attackScore,
            @RequestParam Integer defenceScore,
            @RequestParam Integer specialAttackScore,
            @RequestParam Integer specialDefenceScore,
            @RequestParam Integer speed,
            @RequestParam Integer generation,
            @RequestParam(required = false) Boolean legendary,
            @RequestParam Boolean isActive,
            Model model


    ) {
        if (legendary == null) {
            legendary = false;
        }

        bc.createPokemon(number, name, hpScore, attackScore, defenceScore, specialAttackScore, specialDefenceScore, speed, generation, legendary, isActive);
        return "redirect:/listAllPokemons";
    }

    @GetMapping("/listAllPokemons")
    public String listAllPokemons(Model model) {
        List<Pokemon> pokemonList = bc.listAllPokemons();
        model.addAttribute("pokemonList", pokemonList);
        return "listPokemons";
    }

    @GetMapping("/listDisablePokemons")
    public String listDisablePokemons(Model model) {
        List<Pokemon> disabledPokemons = bc.getDisabledPokemons();
        model.addAttribute("disabledPokemons", disabledPokemons);
        return "listDisablePokemons";
    }
    @GetMapping("/pokemon/{id}/edit")
    public String showEditForm(@PathVariable Long id, Model model) {
        Optional<Pokemon> optionalPokemon = Optional.ofNullable(bc.getPokemonById(id));

        if (optionalPokemon.isPresent()) {
            Pokemon pokemon = optionalPokemon.get();
            model.addAttribute("pokemon", pokemon);
            return "editPokemon";
        } else {
            model.addAttribute("alertMessage", "Pokemon with ID " + id + " not found.");
            return "editPokemon";
        }
    }

    @PostMapping("/pokemon/{id}/edit")
    public String handleEditForm(@PathVariable Long id, @ModelAttribute Pokemon updatedPokemon, Model model) {
        try {
            bc.editPokemon(id, updatedPokemon);
            return "redirect:/listAllPokemons";
        } catch (NoSuchElementException e) {
            model.addAttribute("alertMessage", "Pokemon with ID " + id + " not found.");
            return "editPokemon";
        }
    }

    @GetMapping("/pokemon/{id}/edit/types")
    public String handleEditTypesForm(@PathVariable Long id, @ModelAttribute Pokemon updatedPokemon, Model model) {
        try {
            // Obter a lista de todos os tipos registados na BD
            List<Type> allTypes = bc.getAllTypes();

            // Obter a lista dos tipos associados a um Pokémon
            List<Type> pokemonTypes = bc.getPokemonType(id);

            // Preencher os IDs dos tipos associados a um Pokémon
            Set<Long> selectedTypeIds = pokemonTypes.stream()
                    .map(Type::getId)
                    .collect(Collectors.toSet());

            // Adicionar atributos ao modelo
            model.addAttribute("pokemon", bc.getPokemonById(id));
            model.addAttribute("idPokemon", id);
            model.addAttribute("allTypes", allTypes);
            model.addAttribute("pokemonTypes", pokemonTypes);
            model.addAttribute("selectedTypeIds", selectedTypeIds);

            return "editPokemonTypes";

        } catch (NoSuchElementException e) {
            model.addAttribute("alertMessage", "Pokemon with ID " + id + " not found.");
            return "editPokemonTypes";
        }
    }

    @PostMapping("/pokemon/{id}/edit/types")
    public String handleEditTypesFormPost(@PathVariable Long id, @ModelAttribute Pokemon updatedPokemon, Model model) {
        try {
            // Obtenha o Pokémon existente
            Pokemon existingPokemon = bc.getPokemonById(id);

            // Atualize os tipos associados ao Pokémon
            Set<Pokemon_Type> updatedTypes = new HashSet<>();

            // Verifique se há tipos selecionados
            if (updatedPokemon.getSelectedTypeIds() != null) {
                // Iterar sobre os tipos selecionados no formulário
                for (Long typeId : updatedPokemon.getSelectedTypeIds()) {
                    Type type = new Type();
                    type.setIdType(typeId);

                    Pokemon_Type pokemonType = new Pokemon_Type();
                    pokemonType.setPokemon(existingPokemon);
                    pokemonType.setType(type);
                    pokemonType.setPokemonTypeLevel(updatedPokemon.getPokemonTypes()
                            .stream()
                            .filter(pt -> pt.getType().getIdType().equals(typeId))
                            .findFirst()
                            .orElseThrow(NoSuchElementException::new)
                            .getPokemonTypeLevel());

                    updatedTypes.add(pokemonType);
                }
            }

            existingPokemon.setPokemonTypes(updatedTypes);
            bc.editPokemon(id, existingPokemon);

            return "redirect:/listAllPokemons";

        } catch (NoSuchElementException e) {
            model.addAttribute("alertMessage", "Pokemon with ID " + id + " not found.");
            return "editPokemonTypes";
        }
    }


    @PostMapping("/pokemon/{id}/deactivate")
    public String deactivatePokemon(@PathVariable Long id, Model model) {
        try {
            bc.deactivatePokemon(id);
            return "redirect:/listAllPokemons"; // Redireciona para a lista após a desativação
        } catch (NoSuchElementException e) {
            model.addAttribute("alertMessage", "Pokemon with ID " + id + " not found.");
            return "listPokemons";
        }
    }

    @PostMapping("/pokemon/{id}/activate")
    public String activatePokemon(@PathVariable Long id, Model model) {
        try {
            bc.activatePokemon(id);
            return "redirect:/listDisablePokemons";
        } catch (NoSuchElementException e) {
            model.addAttribute("alertMessage", "Pokemon with ID " + id + " not found.");
            return "redirect:/listDisablePokemons";
        }
    }

    @GetMapping("/search")
    public String searchPokemonByName(@RequestParam(name = "searchName", required = false) String searchName, Model model) {
        List<Pokemon> searchResults;

        if (searchName != null && !searchName.isEmpty()) {
            // Filtrar apenas os Pokémons ativos pelo nome
            searchResults = bc.searchPokemonByName(searchName)
                    .stream()
                    .filter(Pokemon::getIsActive)
                    .collect(Collectors.toList());
        } else {
            // Se o nome de pesquisa estiver vazio, listar todos os Pokémons ativos na mesma
            searchResults = bc.listActivePokemons();
        }

        model.addAttribute("pokemonList", searchResults);
        return "listPokemons";
    }



    @GetMapping("/home") // @GetMapping("/")
    public ModelAndView getHome() {
        ModelAndView mv = new ModelAndView("index");
        return mv;
    }

    @GetMapping("/aboutUs") // @GetMapping("/")
    public ModelAndView getAboutUs() {
        ModelAndView mv = new ModelAndView("aboutUs");
        return mv;
    }

    @GetMapping("/uniquePokemon")
    public ModelAndView getPokemonByName(String name) {
        Pokemon pokemon = bc.getRepositoryPokemonInfoByName(name);
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("pokemon", pokemon);
        return mv;
    }

}
