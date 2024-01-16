package com.ips.tpsi.pokemonwebapp.repository;

import com.ips.tpsi.pokemonwebapp.entity.PokemonType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PokemonTypeRepository extends JpaRepository<PokemonType, Long> {
}
