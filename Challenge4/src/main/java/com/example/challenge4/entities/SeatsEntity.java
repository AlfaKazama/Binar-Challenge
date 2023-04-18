package com.example.challenge4.entities;


import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "seats")
public class SeatsEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Getter
    @Setter
    private Long nomor_masuk;

    @Getter
    @Setter
    private String studio_name;

    @Getter
    @Setter
    private String nomor_kursi;




}
