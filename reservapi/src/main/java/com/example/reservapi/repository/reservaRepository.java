package com.example.reservapi.repository;

import com.example.reservapi.dto.responseDTO;
import com.example.reservapi.entity.reservaciones;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface reservaRepository extends CrudRepository<reservaciones,Integer> {
    @Query(value = "{CALL spx_insertar_reserva(:ClienteID,:SedeID,:MesaID,:FechaHoraReserva,:Mensaje)}", nativeQuery = true)
    responseDTO createReserva(
            @Param("ClienteID") int ClienteID,
            @Param("SedeID") int SedeID,
            @Param("MesaID") int MesaID,
            @Param("FechaHoraReserva") String FechaHoraReserva,
            @Param("Mensaje") String Mensaje
    );
}
