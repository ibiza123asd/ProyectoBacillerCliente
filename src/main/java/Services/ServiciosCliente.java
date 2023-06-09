/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Services;

import Services.*;
import java.util.Date;
import java.util.List;
import javax.xml.datatype.XMLGregorianCalendar;

public class ServiciosCliente {
    
    public ServiciosCliente() {
    }
    
    public List<Especialidad> listarEspecialidades() {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.listarEspecialidades();
    }
    
    public List<XMLGregorianCalendar> listarAllCitas() {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.listarAllCitas();
    }
   
    public List<MedicoDTO> listarMedicos(int codEspecialidad) {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.listarMedicoByEspecialidad(codEspecialidad);
    }
    public List<AnyTypeArray> listarMedicosP() {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.listarMedicos();
    }
    
    public List<AgendaDTO> listarAgendaByMedico(int codMedico) {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.listarAgendaByMedico(codMedico);
    }
    
    public void registrarCita(Cita cita) {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        port.registrarCita(cita);
    }
    
    public CitaDTO encontrarCita(int codigo) {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.encontrarCita(codigo);
    }
    public CitaDTO encontrarCitaUltimada() {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.encontrarCitaUltima();
    }
    
    public int encontrarUltimaCita() {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.encontrarUltimoRegistro();
    }
    
    public void registrarPaciente(Paciente paciente) {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        port.registrarPaciente(paciente);
    }
    
    public MedicoDTO encontrarMedico(int id) {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.encontrarMedico(id);
    }
    
    public AgendaDTO encontrarAgenda(int id) {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.encontrarAgenda(id);
    }
    
    public Especialidad encontrarEspecialidad(int id) {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.encontrarEspecialidad(id);
    }
    
    public Paciente encontrarPaciente(String documento) {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.encontrarPaciente(documento);
    }
    
    public List<AnyTypeArray> encontrarlistaCitas(String documento) {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.findCitas(documento);
    }
    
    public Paciente encontrarPacientebyLogeo(String documento, String password) {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.logeo(documento, password);
    }
    
    public void updatePassWord(Paciente paciente) {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        port.updatePaciente(paciente);
    }
    
    public List<AnyTypeArray> countAppointmentsByPatient() {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.countAppointmentsByPatient();
    }

    public List<AnyTypeArray> countMedicsByShift() {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.countMedicsByShift();
    }

    public List<AnyTypeArray> countMedicsBySpecialty() {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.countMedicsBySpecialty();
    }

    public List<AnyTypeArray> pacientePorEspecialidad() {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.pacientePorEspecialidad();
    }

    public List<AnyTypeArray> countPatientsByMedic() {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.countPatientsByMedic();
    }
    
    public void createMedico(Medico medico) {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        port.createMedic(medico);
    }

    public void createEspeciality(Especialidad especialidad) {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        port.createEspeciality(especialidad);
    }

    public void createAgenda(Agenda agenda) {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        port.createMAgenda(agenda);
    }
    
    public List<AnyTypeArray> listarAllAgendas() {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.listarAllAgenda();
    }
    
    public List<CitaDTO> encontrarListaCitasByIdPaciente(int idPaciente) {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.listarCitasByIdPaciente(idPaciente);
    }
    
    public List<CitaDTO> encontrarListaCitasByidMedico(int idMedico) {
        Services_Service Service = new Services_Service();
        Services port = Service.getServicesPort();
        return port.listarCitasByIdMedico(idMedico);
    }
}
