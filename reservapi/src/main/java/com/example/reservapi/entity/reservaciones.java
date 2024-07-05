package com.example.reservapi.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class reservaciones {
    @Id
    private Integer reservacionid;
    private Integer clienteid;
    private Integer sedeid;
    private Integer mesaid;
    private String fechahorareserva;
    private String mensaje;
    public reservaciones(){}
}
