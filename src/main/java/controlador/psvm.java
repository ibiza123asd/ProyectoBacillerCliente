/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import Services.AnyTypeArray;
import Services.ServiciosCliente;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
        List<XMLGregorianCalendar> fechaCitas = sc.listarAllCitas();
        List<AnyTypeArray> fechaAgendas = sc.listarAllAgendas();
        List<String> fechaCitaString = new ArrayList<>();
        List<String> fechaAgendasString = new ArrayList<>();
        for (AnyTypeArray item : fechaAgendas) {
            Object[] citaArray = item.getItem().toArray();
            XMLGregorianCalendar xmLCalendar = (XMLGregorianCalendar) citaArray[0];
            LocalDateTime localDateTime = LocalDateTime.of(xmLCalendar.getYear(), xmLCalendar.getMonth(),
                    xmLCalendar.getDay(), xmLCalendar.getHour(), xmLCalendar.getMinute(), xmLCalendar.getSecond());
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
            String dateTimeString = localDateTime.format(formatter);
            System.out.println(dateTimeString);
            fechaAgendasString.add(dateTimeString);

        }
        System.out.println("Hola Mundo");

        for (XMLGregorianCalendar item : fechaCitas) {
            LocalDateTime localDateTime = LocalDateTime.of(item.getYear(), item.getMonth(),
                    item.getDay(), item.getHour(), item.getMinute(), item.getSecond());
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
            String dateTimeString = localDateTime.format(formatter);
            System.out.println(dateTimeString);
            fechaCitaString.add(dateTimeString);

        }
        List<String> fechaAgendasString2 = new ArrayList<>();
        for (String fechaCita : fechaCitaString) {
            fechaAgendasString.remove(fechaCita);
        }

        fechaAgendasString2.addAll(fechaAgendasString);
        System.out.println(fechaAgendasString2.size());

    }
}
