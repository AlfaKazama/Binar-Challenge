package com.example.challenge4.controller;


import com.example.challenge4.entities.UsersEntity;
import com.example.challenge4.repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users")
public class UsersController {

    @Autowired
    UsersRepository usersRepository;

    @PostMapping(value = "addUsers")
    public UsersEntity addUsers(@RequestBody UsersEntity param) {
        usersRepository.save(param);
        return param;
    }

    @GetMapping(value = "getAllUsers")
    public List<UsersEntity> getAllUsers() {
        return usersRepository.findAll();
    }

    @GetMapping(value = "getByNoUser")
    public UsersEntity getByNoUser(@RequestParam Long no_user) {
        return usersRepository.findById(no_user).get();
    }

    @PostMapping(value = "updateUsers")
    public UsersEntity updateSchedule(@RequestBody UsersEntity param) {
        return usersRepository.save(param);
    }

    @GetMapping(value = "deleteUsers")
    public List<UsersEntity> deleteUsers(@RequestParam Long no_user) {
        usersRepository.deleteById(no_user);

        List<UsersEntity> usersList = usersRepository.findAll();
        return usersList;
    }

}
