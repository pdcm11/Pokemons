package com.ips.tpsi.pokemonwebapp.controller;
import com.ips.tpsi.pokemonwebapp.entity.Type;
import org.springframework.ui.Model;
import com.ips.tpsi.pokemonwebapp.bc.WebBc;
import com.ips.tpsi.pokemonwebapp.entity.Pokemon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
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

    @GetMapping("/home") // @GetMapping("/")
    public ModelAndView getHome() {
        ModelAndView mv = new ModelAndView("index");
        // aceder à business component > acede ao repositorio > obtem dados

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
            return "errorPage";  // Página de erro personalizada
        }
    }




}
