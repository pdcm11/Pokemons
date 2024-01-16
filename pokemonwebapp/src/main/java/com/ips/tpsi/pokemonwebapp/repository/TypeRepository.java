package com.ips.tpsi.pokemonwebapp.repository;

import com.ips.tpsi.pokemonwebapp.entity.Type;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TypeRepository extends JpaRepository<Type, Long> {
}
