/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Brandon
 */
public class psvm {
    public static void main(String[] args) {
        try {
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
            Date fechaHora = null;
            fechaHora = dateFormat.parse("28-05-2023 08:30:00");
            System.out.println("La fechaHora:" + fechaHora);
        } catch (ParseException ex) {
            Logger.getLogger(psvm.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
