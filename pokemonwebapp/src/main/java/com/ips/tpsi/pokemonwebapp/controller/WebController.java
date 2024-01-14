package com.ips.tpsi.pokemonwebapp.controller;
import com.ips.tpsi.pokemonwebapp.entity.Type;
import org.springframework.ui.Model;
import com.ips.tpsi.pokemonwebapp.bc.WebBc;
import com.ips.tpsi.pokemonwebapp.entity.Pokemon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

@Controller
public class WebController {

    @Autowired
    WebBc bc;

    @GetMapping("/listAllPokemons")
    public String listAllPokemons(Model model) {
        List<Pokemon> pokemonList = bc.listAllPokemons();
        model.addAttribute("pokemonList", pokemonList);
        return "listPokemons";
    }


    @GetMapping("/pokemon/{id}/edit")
    public String showEditForm(@PathVariable Long id, Model model) {
        Optional<Pokemon> optionalPokemon = Optional.ofNullable(bc.getPokemonById(id));

        if (optionalPokemon.isPresent()) {
            Pokemon pokemon = optionalPokemon.get();
            model.addAttribute("pokemon", pokemon);
            return "editPokemon"; // Nome da página de edição
        } else {
            // Adicionar a mensagem de alerta à model
            model.addAttribute("alertMessage", "Pokemon with ID " + id + " not found.");
            return "editPokemon";
        }
    }

    @PostMapping("/pokemon/{id}/edit")
    public String handleEditForm(@PathVariable Long id, @ModelAttribute Pokemon updatedPokemon, Model model) {
        try {
            bc.editPokemon(id, updatedPokemon);
            return "redirect:/listAllPokemons";  // Redirecionar para a página de listagem após a edição
        } catch (NoSuchElementException e) {
            // Adicionar a mensagem de alerta à model
            model.addAttribute("alertMessage", "Pokemon with ID " + id + " not found.");
            return "editPokemon";
        }
    }

    @GetMapping("/pokemon/{id}/edit/types")
    public String handleEditTypesForm(@PathVariable Long id, @ModelAttribute Pokemon updatedPokemon, Model model) {
        try {
            // Obter a lista de todos os tipos disponíveis
            List<Type> allTypes = bc.getAllTypes();

            // Obter a lista de tipos associados ao Pokémon
            List<Type> pokemonTypes = bc.getPokemonType(id);

            // Preencher os IDs dos tipos associados ao Pokémon
            Set<Long> selectedTypeIds = pokemonTypes.stream()
                    .map(Type::getId)
                    .map(Integer::longValue) // Converter Integer para Long
                    .collect(Collectors.toSet());

            // Adicionar atributos ao modelo
            model.addAttribute("allTypes", allTypes);
            model.addAttribute("pokemonTypes", pokemonTypes);
            model.addAttribute("selectedTypeIds", selectedTypeIds);

            return "editPokemonTypes";

        } catch (Exception e) {
            // Log do erro ou tratamento adequado
            e.printStackTrace();
            model.addAttribute("error", "Erro ao editar tipos de Pokémon.");
            return "errorPage";
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
            searchResults = bc.searchPokemonByName(searchName);
        } else {
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

    @GetMapping("/listDisablePokemons")
    public String listDisablePokemons(Model model) {
        // Lógica para obter a lista de Pokémon desativados e adicioná-la ao modelo
        List<Pokemon> disabledPokemons = bc.getDisabledPokemons();
        model.addAttribute("disabledPokemons", disabledPokemons);

        return "listDisablePokemons";
    }

}
