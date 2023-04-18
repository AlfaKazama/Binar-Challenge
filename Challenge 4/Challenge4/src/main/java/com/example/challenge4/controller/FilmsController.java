package com.example.challenge4.controller;

import com.example.challenge4.entities.FilmsEntity;
import com.example.challenge4.repository.FilmsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/films")
public class FilmsController {

    @Autowired
    FilmsRepository filmsRepository;

    @GetMapping(value = "checkAPI")
    public String checkAPI() {
        return "Succes Check API";
    }

    @PostMapping(value = "addFilms")
    public FilmsEntity addFilms(@RequestBody FilmsEntity param) {
        filmsRepository.save(param);
        return param;
    }

    @GetMapping(value = "getAllFilms")
    public List<FilmsEntity> getAllFilms() {
        return filmsRepository.findAll();
    }

    @GetMapping(value = "getByFilmCode")
    public FilmsEntity getByFilmCode(@RequestParam Long film_code){
        return filmsRepository.findById(film_code).get();
    }

    @PostMapping(value = "updateFilm")
    public FilmsEntity updateFilm(@RequestBody FilmsEntity param) {
        return filmsRepository.save(param);
    }

    @GetMapping(value = "deleteFilm")
    public List<FilmsEntity> deleteFilm(@RequestParam Long film_code) {
        filmsRepository.deleteById(film_code);

        List<FilmsEntity> filmList = filmsRepository.findAll();
        return filmList;
    }





}
