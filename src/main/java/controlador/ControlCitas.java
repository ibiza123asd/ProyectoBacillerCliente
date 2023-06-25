package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Services.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

@WebServlet(name = "ControlCitas", urlPatterns = {"/ControlCitas"})
public class ControlCitas extends HttpServlet {

    ServiciosCliente sc = new ServiciosCliente();
    HttpSession sesion;
    PrintWriter out;
    List<Especialidad> especialidades;
    List<AnyTypeArray> listaCitas;

    String password;

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String accion = req.getParameter("accion");
        String documento;
        switch (accion) {
            case "inicio":
                req.getRequestDispatcher("/home.jsp").forward(req, resp);
                break;
            case "validarsis":
                documento = req.getParameter("documento");
                this.evaluacion2(req, resp, documento);
                break;
            case "login":
                documento = req.getParameter("dni");
                password = req.getParameter("contrasena");
                this.login(req, resp, documento, password);
                break;
            case "usuario":
                resp.sendRedirect("ControlCitas?accion=perfil");
                break;
            case "perfil":
                req.getRequestDispatcher("/perfil.jsp").forward(req, resp);
                break;
            case "cerrarSesion":
                System.out.println("Entrando a cerrar sesion");
                sesion.invalidate();
                resp.sendRedirect("ControlCitas?accion=inicio");
                break;
            case "registrarUsuario":
                documento = req.getParameter("documentor");
                int bandera = Integer.parseInt(req.getParameter("bandera"));
                this.registroPaciente(req, resp, documento, bandera);
                break;
            case "formularioCita":
                documento = req.getParameter("dni");
                sesion.setAttribute("DNI", documento);
                sesion.setAttribute("especialidades", sc.listarEspecialidades());
                req.getRequestDispatcher("/FormularioCita.jsp").forward(req, resp);
                break;
            case "listas":
                System.out.println("La accion es:" + accion);
                this.evaluarListas(req, resp);
                break;
            case "RegistrarCita":
                this.registrarCita(req, resp);
                break;
            case "Recuperar":
                this.recuperarContraseña(req, resp);
                break;
            case "updatePass":
                this.updatePass(req, resp);
                break;
            case "listarEspecialidades":
                System.out.println("Entrando a listarespecialidades");
                especialidades = sc.listarEspecialidades();
                req.setAttribute("especialidades", especialidades);
                req.getRequestDispatcher("/adm_medico.jsp").forward(req, resp);
                break;
            case "saveMedico":
                String nombreMedico = req.getParameter("nomMedico");
                String apellidoPaterno = req.getParameter("apePatMedico");
                String apellidoMaterno = req.getParameter("apeMatMedico");
                String telefono = req.getParameter("telfMedico");
                int idM = Integer.parseInt(req.getParameter("idEspMedico"));
                Medico medico = new Medico();
                medico.setNombreMedico(nombreMedico);
                medico.setApellidoPat(apellidoPaterno);
                medico.setApellidoMat(apellidoMaterno);
                medico.setTelefono(telefono);
                Especialidad especialidad = new Especialidad();
                especialidad.setIdEspecialidad(idM);
                medico.setIdEspecialidad(especialidad);
                sc.createMedico(medico);
                req.getRequestDispatcher("/adm_medico.jsp").forward(req, resp);
                break;
            case "saveEspecialidad":
                String nombreEspecialidad = req.getParameter("nomEspecialidad");
                especialidad = new Especialidad();
                especialidad.setNombreEspecialidad(nombreEspecialidad);
                sc.createEspeciality(especialidad);
                req.getRequestDispatcher("/adm_especialidad.jsp").forward(req, resp);
                break;
            case "listarMedicos":
                System.out.println("Entrando a listar Medicos");
                List<AnyTypeArray> listarMedicos = sc.listarMedicosP();
                req.setAttribute("medicos", listarMedicos);
                req.getRequestDispatcher("/adm_agenda.jsp").forward(req, resp);
                break;
            case "saveAgenda":
                int idMedic = Integer.parseInt(req.getParameter("idMedico"));
                String turno = req.getParameter("nameAgenda");
                System.out.println("El turno es: " + turno);
                medico = new Medico();
                medico.setIdMedico(idMedic);
                Agenda agenda = new Agenda();
                String fechaHoraStr = req.getParameter("fhAgenda");
                System.out.println("La agenda es:" + fechaHoraStr);

                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                Date fechaHora = null;
                DatatypeFactory datatypeFactory = null;
                XMLGregorianCalendar xmlfechaHora = null;
                GregorianCalendar calendar = new GregorianCalendar();

                try {
                    fechaHora = dateFormat.parse(fechaHoraStr);
                    calendar.setTime(fechaHora);
                    System.out.println("La fechaHora:" + fechaHora);
                    // datatypeFactory = DatatypeFactory.newInstance();
                    xmlfechaHora = DatatypeFactory.newInstance().newXMLGregorianCalendar(calendar);
                } catch (ParseException | DatatypeConfigurationException exp) {
                    exp.printStackTrace();
                }
                agenda.setFechaHora(xmlfechaHora);
                agenda.setIdMedico(medico);
                agenda.setTurno(turno);
                sc.createAgenda(agenda);
                req.getRequestDispatcher("/adm_agenda.jsp").forward(req, resp);
                break;

            case "adm_login":
                documento = req.getParameter("dni");
                password = req.getParameter("contrasena");
                this.adm_login(req, resp, documento, password);
                break;

            case "adm_dashboard":
                req.getRequestDispatcher("/adm_dashboard.jsp").forward(req, resp);
                break;

        }
    }

    public void updatePass(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Entrando al metodo updatePass");
        String pass1 = req.getParameter("contrasena");
        String pass2 = req.getParameter("contrasena2");
        String dni = req.getParameter("documento");
        System.out.println("Contraseña1:" + pass1 + " Contraseña2:" + pass2);
        if (pass1.equals(pass2)) {
            Paciente paciente = sc.encontrarPaciente(dni);
            System.out.println("Paciente encontrado:" + paciente.toString());
            paciente.setIdPaciente(paciente.getIdPaciente());
            paciente.setContrasena(pass2);
            sc.updatePassWord(paciente);
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        } else {
            req.setAttribute("Llave", "Tus password ingresados no coinciden");
            req.getRequestDispatcher("/FormularioRecuperar.jsp").forward(req, resp);
        }

    }

    public void recuperarContraseña(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String correo = req.getParameter("email");
        String dni = req.getParameter("dni");
        Paciente paciente = sc.encontrarPaciente(dni);
        if (paciente != null) {
            if (correo.equals(paciente.getCorreo())) {
                req.setAttribute("dni", paciente.getDni());
                req.setAttribute("Llave", "Usuario Encontrado");
                req.getRequestDispatcher("/FormularioRecuperar.jsp").forward(req, resp);
            } else {
                req.setAttribute("Llave2", "Correo Incorrecto, Intentelo Otra vez");
                req.getRequestDispatcher("/RecuperarPass.jsp").forward(req, resp);
            }
        } else {
            req.setAttribute("Llave2", "Usuario Inexistente");
            req.getRequestDispatcher("/RecuperarPass.jsp").forward(req, resp);
        }
    }

    public void evaluarListas(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getParameter("especialidad") != null) {
            System.out.println("Entramos a especialidad");
            int idespecialidad = Integer.parseInt(req.getParameter("especialidad"));
            System.out.println("idEspecialidad:" + idespecialidad);
            resp.setContentType("text/html");
            out = resp.getWriter();
            out.print("<option value=''>Seleccione un médico</option>");
            sc.listarMedicos(idespecialidad).forEach(medico -> {
                out.print("<option value='" + medico.getIdMedico() + "'>" + medico.getNombreMedico() + "</option>");
            });
        } else if (req.getParameter("medico") != null) {
            System.out.println("Entramos a medico");
            System.out.println("ultimaCita del parámetro medico: " + req.getParameter("medico"));
            int idmedico = Integer.parseInt(req.getParameter("medico"));
            List<AgendaDTO> agenda = sc.listarAgendaByMedico(idmedico);
            resp.setContentType("text/html");
            out = resp.getWriter();
            out = resp.getWriter();
            out.print("<option value=''>Seleccione una agenda</option>");
            agenda.forEach(ag -> {
                out.print("<option value='" + ag.getIdAgenda() + "'>" + ag.getFechaHora() + " Turno " + ag.getTurno() + "</option>");
            });
        }
    }

    public void evaluacion(HttpServletRequest req, HttpServletResponse resp, String documento) throws ServletException, IOException {
        Paciente paciente = sc.encontrarPaciente(documento);
        if (paciente != null) {
            req.setAttribute("DNI", documento);
            req.setAttribute("Resultado", "Usted Cuenta con SIS");
            req.getRequestDispatcher("/ValidarSis.jsp").forward(req, resp);
        } else {
            req.setAttribute("Resultado", "Usted No Cuenta con SIS");
            req.getRequestDispatcher("/ValidarSis.jsp").forward(req, resp);
        }
    }

    public void login(HttpServletRequest req, HttpServletResponse resp, String documento, String password) throws ServletException, IOException {
        Paciente paciente = sc.encontrarPacientebyLogeo(documento, password);
        if (paciente != null) {
            sesion = req.getSession();
            listaCitas = sc.encontrarlistaCitas(documento);
            sesion.setAttribute("especialidades", sc.listarEspecialidades());
            sesion.setAttribute("paciente", paciente);
            sesion.setAttribute("listaCitas", listaCitas);
            req.getRequestDispatcher("/perfil.jsp").forward(req, resp);
        } else {
            req.setAttribute("Resultado", "Credenciales incorrectos o No se encuentra afiliado al SIS");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
    }

    public void adm_login(HttpServletRequest req, HttpServletResponse resp, String documento, String password) throws ServletException, IOException {
        Paciente paciente = sc.encontrarPacientebyLogeo(documento, password);
        if (paciente != null) {
            sesion = req.getSession();
            req.getRequestDispatcher("/adm_dashboard.jsp").forward(req, resp);
        } else {
            req.setAttribute("Resultado", "Credenciales incorrectos o No se encuentra afiliado al SIS");
            req.getRequestDispatcher("/adm_login.jsp").forward(req, resp);
        }
    }

    public void registroPaciente(HttpServletRequest req, HttpServletResponse resp, String documentor, int bandera) throws ServletException, IOException {
        String nombre = req.getParameter("nombres");
        String apePa = req.getParameter("apellido_paterno");
        String apeMa = req.getParameter("apellido_materno");
        int edad = Integer.parseInt(req.getParameter("edad"));
        String correo = req.getParameter("email");
        boolean seguro = false;
        if (bandera == 1) {
            seguro = true;
        }
        String passwordr = req.getParameter("contrasena");
        Paciente paciente = new Paciente();
        paciente.setNombre(nombre);
        paciente.setApellidoPaterno(apePa);
        paciente.setApellidoMaterno(apeMa);
        paciente.setDni(documentor);
        paciente.setEdad(edad);
        paciente.setSeguroSIS(seguro);
        paciente.setContrasena(passwordr);
        paciente.setCorreo(correo);
        sc.registrarPaciente(paciente);
        this.login(req, resp, documentor, passwordr);
    }

    public void evaluacion2(HttpServletRequest req, HttpServletResponse resp, String documento) throws ServletException, IOException {
        //Cuenta con Sis
        String valor = this.validarApiSIS(documento);

        if (valor != null) {
            //Validamos si tiene una cuenta
            if (sc.encontrarPaciente(valor) != null) {
                req.setAttribute("DNI", valor);
                req.setAttribute("bandera", 1);
                req.setAttribute("Resultado", "Usted Cuenta con SIS y tiene Asociado una cuenta");
                req.getRequestDispatcher("/ValidarSis.jsp").forward(req, resp);
            } else {
                req.setAttribute("DNI", valor);
                req.setAttribute("bandera", 2);
                req.setAttribute("Resultado", "Usted Cuenta con SIS, pero no tiene cuenta");
                req.getRequestDispatcher("/ValidarSis.jsp").forward(req, resp);
            }
        } else {
            req.setAttribute("bandera", 0);
            req.setAttribute("DNI", documento);
            req.setAttribute("Resultado", "Usted No Cuenta con SIS");
            req.getRequestDispatcher("/ValidarSis.jsp").forward(req, resp);
        }
    }

    public void registrarCita(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int especialidad = Integer.parseInt(req.getParameter("especialidad"));
        int medico = Integer.parseInt(req.getParameter("medicos"));
        int agenda = Integer.parseInt(req.getParameter("agenda"));
        AgendaDTO agendaDTO = sc.encontrarAgenda(agenda);
        String fechaHora = agendaDTO.getFechaHora();
        System.out.println("La fechahoraes:" + fechaHora);
        String documento = req.getParameter("documento");
        double MONTO = 15.99;
        Cita cita = new Cita();
        MedicoDTO medicodto = sc.encontrarMedico(medico);
        Paciente paciente = sc.encontrarPaciente(documento);
        if (paciente.isSeguroSIS()) {
            MONTO = 0;
        }
        Medico medicod = new Medico();
        medicod.setIdMedico(medicodto.getIdMedico());
        cita.setIdMedico(medicod);
        cita.setOrden(0);
        cita.setIdPaciente(paciente);
        cita.setCostoCita(MONTO);
        XMLGregorianCalendar xmlfechaHora = this.ConversionFechaHra(fechaHora);
        cita.setFechaHora(xmlfechaHora);
        String error = null;
        try{
            sc.registrarCita(cita);
        }catch(Exception exp){
            exp.printStackTrace();
            error = "La fecha ya se encuentra ocupada o ha excedido el limite de citas por dia, intenta con otra fecha o con otro medico";
        }
        
        if(error!=null){
            req.setAttribute("error", error);
            req.getRequestDispatcher("/FormularioCita.jsp").forward(req, resp);
        }
        int ultimaCita = sc.encontrarUltimaCita();
        Especialidad especialidadp = sc.encontrarEspecialidad(especialidad);

        req.setAttribute("ultimacita", ultimaCita);
        req.setAttribute("Medico", medicodto.getNombreMedico());
        req.setAttribute("Especialidad", especialidadp.getNombreEspecialidad());
        req.setAttribute("FechaCita", agendaDTO.getFechaHora());
        req.setAttribute("Turno", agendaDTO.getTurno());
        req.setAttribute("edad", paciente.getEdad());
        req.setAttribute("nombre", paciente.getNombre() + "\t" + paciente.getApellidoPaterno());
        req.setAttribute("documentodni", paciente.getDni());
        req.setAttribute("monto", MONTO);
        req.getRequestDispatcher("/ticket.jsp").forward(req, resp);
    }

    public XMLGregorianCalendar ConversionFechaHra(String fechaHoraStr) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        Date fechaHora = null;
        DatatypeFactory datatypeFactory = null;
        XMLGregorianCalendar xmlfechaHora = null;
        GregorianCalendar calendar = new GregorianCalendar();

        try {
            fechaHora = dateFormat.parse(fechaHoraStr);
            calendar.setTime(fechaHora);
            System.out.println("La fechaHora:" + fechaHora);
            // datatypeFactory = DatatypeFactory.newInstance();
            xmlfechaHora = DatatypeFactory.newInstance().newXMLGregorianCalendar(calendar);
        } catch (ParseException | DatatypeConfigurationException exp) {
            exp.printStackTrace();
        }

        return xmlfechaHora;
    }

    public String validarApiSIS(String documento) {
        String resultado = null;
        List<String> documentos = new ArrayList<>();
        //tienen sis pero no cuenta asociada
        documentos.add("77777777");
        documentos.add("88888888");
        documentos.add("11111144");
        documentos.add("44448888");
        documentos.add("33335555");
        documentos.add("48684547");
        //A partir de acá los DNI tienen cuenta asociada
        documentos.add("40429532");
        documentos.add("62377619");
        documentos.add("12736035");
        documentos.add("71259249");
        documentos.add("71105097");
        documentos.add("44124341");
        documentos.add("81678630");
        documentos.add("21662174");
        documentos.add("94223750");
        documentos.add("19311477");
        documentos.add("45622657");
        documentos.add("53565512");
        documentos.add("42526514");
        documentos.add("67210080");
        documentos.add("55052605");
        documentos.add("15787202");
        documentos.add("61996605");
        documentos.add("90095074");
        documentos.add("31375260");
        documentos.add("39036462");
        documentos.add("59475311");
        documentos.add("20688895");
        documentos.add("88087439");
        documentos.add("41107782");
        documentos.add("35614475");
        documentos.add("91311529");
        documentos.add("65941074");
        documentos.add("21585145");
        documentos.add("68439547");
        documentos.add("62472157");
        documentos.add("42593441");
        documentos.add("75460115");
        documentos.add("39668361");
        documentos.add("56624561");
        documentos.add("49905134");
        documentos.add("39967679");
        documentos.add("23439136");
        documentos.add("73379034");
        documentos.add("38904407");
        documentos.add("73136530");
        documentos.add("48169529");
        documentos.add("87274604");
        documentos.add("58301159");
        documentos.add("76211607");
        documentos.add("16428275");
        documentos.add("21337650");
        documentos.add("14266454");
        documentos.add("35204474");
        documentos.add("45044362");
        documentos.add("79137880");
        documentos.add("75922455");
        documentos.add("654878");
        documentos.add("88888888");
        documentos.add("7777");
        for (String doc : documentos) {
            if (doc.equals(documento)) {
                resultado = documento;
                System.out.println("Encontrado el documento:" + documento);
                break;
            }
        }

        return resultado;
    }

}
