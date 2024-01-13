package com.ips.tpsi.pokemonwebapp.controller;

import org.springframework.ui.Model;
import com.ips.tpsi.pokemonwebapp.bc.WebBc;
import com.ips.tpsi.pokemonwebapp.entity.Pokemon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

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

    @GetMapping("/pokemon/{id}/types")
    public String showPokemonTypes(@PathVariable Long id, Model model) {
        Pokemon pokemon = bc.getPokemonById(id);

        if (pokemon != null) {
            List<Object[]> pokemonTypes = bc.getPokemonTypesById(id);
            model.addAttribute("pokemon", pokemon);
            model.addAttribute("pokemonTypes", pokemonTypes);
            return "pokemonTypes"; // Nome da página de detalhes dos tipos
        } else {
            // Tratar caso o Pokémon não seja encontrado
            return "pokemonNotFound"; // Nome da página de Pokémon não encontrado
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


    @GetMapping("/name") // @GetMapping("/")
    public ModelAndView getName() {
        ModelAndView mv = new ModelAndView("index");
        // aceder à business component > acede ao repositorio > obtem dados
        mv.addObject("name", "Vania");
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