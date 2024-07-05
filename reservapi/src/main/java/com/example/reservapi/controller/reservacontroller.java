package com.example.reservapi.controller;

import com.example.reservapi.dto.responseDTO;
import com.example.reservapi.entity.reservaciones;
import com.example.reservapi.services.reservaService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@Slf4j
@RequestMapping("/apireservas")
public class reservacontroller {
    @Autowired
    private reservaService rService;
    @PostMapping(value = "/insertar")
    public responseDTO insertarReserva(@RequestBody reservaciones objres){
        return rService.createReserva(objres);
    }
}
