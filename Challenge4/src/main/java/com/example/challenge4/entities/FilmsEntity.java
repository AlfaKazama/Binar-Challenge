package com.example.challenge4.entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "films")
public class FilmsEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Getter
    @Setter
    private Long film_code;

    @Getter
    @Setter
    private String film_name;

    @Getter
    @Setter
    private boolean sedang_tayang;

    @Override
    public String toString() {
        return "FilmsEntity{" +
                "film_code=" + film_code +
                ", film_name='" + film_name + '\'' +
                ", sedang_tayang=" + sedang_tayang +
                '}';
    }
}
