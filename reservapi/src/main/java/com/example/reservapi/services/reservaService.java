package com.example.reservapi.services;

import com.example.reservapi.dto.responseDTO;
import com.example.reservapi.entity.reservaciones;
import com.example.reservapi.repository.reservaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class reservaService {
    @Autowired
    private reservaRepository res_rep;
    public responseDTO createReserva(reservaciones objre){
        return res_rep.createReserva(
                objre.getClienteid(),
                objre.getSedeid(),
                objre.getMesaid(),
                objre.getFechahorareserva(),
                objre.getMensaje()
        );
    }
}
