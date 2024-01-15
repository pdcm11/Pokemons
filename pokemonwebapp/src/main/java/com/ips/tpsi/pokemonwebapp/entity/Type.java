package com.ips.tpsi.pokemonwebapp.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "type")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Type {

    @Id
    @Column(name = "id_type")
    private Long idType;
    @Column(name = "name")
    private String name;

    public Long getId() {
        return idType;
    }
}
