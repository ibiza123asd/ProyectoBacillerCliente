/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import Services.AgendaDTO;
import Services.AnyTypeArray;
import Services.CitaDTO;
import Services.ServiciosCliente;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.datatype.XMLGregorianCalendar;

/**
 *
 * @author Brandon
 */
public class psvm {

    public static void main(String[] args) {
//        try {
//            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
//            Date fechaHora = null;
//            fechaHora = dateFormat.parse("28-05-2023 08:30:00");
//            System.out.println("La fechaHora:" + fechaHora);
//        } catch (ParseException ex) {
//            Logger.getLogger(psvm.class.getName()).log(Level.SEVERE, null, ex);
//        }
        ServiciosCliente sc = new ServiciosCliente();
        List<AgendaDTO> agendas = sc.listarAgendaByMedico(12);
        List<CitaDTO> citas= sc.encontrarListaCitasByidMedico(12);
        
        for(AgendaDTO agenda:agendas){
            System.out.println("Hola1:"+agenda.getFechaHora());
        }
        
        for(CitaDTO cita: citas){

            System.out.println("Hola2:"+cita.getFechaHora());
        }

    }
    
  
}
