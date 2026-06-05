package com.packt.ahmeric.reactivesample.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

@Table("USERS")
public record User(
        @JsonProperty("id")
        @Id
        Long id,
        @JsonProperty("name")
        String name,
        @JsonProperty("email")
        String email
) {
}


