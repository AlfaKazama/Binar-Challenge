package com.example.challenge4.controller;

import com.example.challenge4.entities.SeatsEntity;
import com.example.challenge4.repository.SeatsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/seats")
public class SeatsController {

    @Autowired
    SeatsRepository seatsRepository;

    @PostMapping(value = "addSeats")
    public SeatsEntity addSeats(@RequestBody SeatsEntity param) {
        seatsRepository.save(param);
        return param;
    }

    @GetMapping(value = "getAllSeats")
    private List<SeatsEntity> getAllSeats() {
        return seatsRepository.findAll();
    }

    @GetMapping(value = "getByNomorMasuk")
    public SeatsEntity getByNomorMasuk(@RequestParam Long nomor_masuk) {
        return seatsRepository.findById(nomor_masuk).get();
    }

    @PostMapping(value = "updateSeats")
    public SeatsEntity updateSeats(@RequestBody SeatsEntity param) {
        return seatsRepository.save(param);
    }

    @GetMapping(value = "deleteSeats")
    public List<SeatsEntity> deleteSeats(@RequestParam Long  nomor_masuk) {
        seatsRepository.deleteById( nomor_masuk);

        List<SeatsEntity> seatsList = seatsRepository.findAll();
        return seatsList;
    }



}
