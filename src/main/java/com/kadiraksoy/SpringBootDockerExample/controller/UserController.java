package com.kadiraksoy.SpringBootDockerExample.controller;


import com.kadiraksoy.SpringBootDockerExample.model.User;
import com.kadiraksoy.SpringBootDockerExample.repository.UserRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api/")
public class UserController {

    private final UserRepository userRepository;

    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }


    @GetMapping("users")
    public List<User> getAll(){
        return userRepository.findAll();
    }
}
