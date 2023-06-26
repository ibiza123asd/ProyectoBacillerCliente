
package Services;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the Services package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _ListarAllAgendaResponse_QNAME = new QName("http://Servicios/", "listarAllAgendaResponse");
    private final static QName _EncontrarCitaResponse_QNAME = new QName("http://Servicios/", "encontrarCitaResponse");
    private final static QName _ListarAllAgenda_QNAME = new QName("http://Servicios/", "listarAllAgenda");
    private final static QName _EncontrarCitaUltima_QNAME = new QName("http://Servicios/", "encontrarCitaUltima");
    private final static QName _EncontrarCitaUltimaResponse_QNAME = new QName("http://Servicios/", "encontrarCitaUltimaResponse");
    private final static QName _ListarAgendaByMedico_QNAME = new QName("http://Servicios/", "listarAgendaByMedico");
    private final static QName _FindCitasResponse_QNAME = new QName("http://Servicios/", "findCitasResponse");
    private final static QName _ListarCitasByIdPaciente_QNAME = new QName("http://Servicios/", "listarCitasByIdPaciente");
    private final static QName _EncontrarPacienteResponse_QNAME = new QName("http://Servicios/", "encontrarPacienteResponse");
    private final static QName _EncontrarCita_QNAME = new QName("http://Servicios/", "encontrarCita");
    private final static QName _RegistrarPacienteResponse_QNAME = new QName("http://Servicios/", "registrarPacienteResponse");
    private final static QName _EncontrarUltimoRegistro_QNAME = new QName("http://Servicios/", "encontrarUltimoRegistro");
    private final static QName _CountAppointmentsByPatientResponse_QNAME = new QName("http://Servicios/", "countAppointmentsByPatientResponse");
    private final static QName _UpdatePacienteResponse_QNAME = new QName("http://Servicios/", "updatePacienteResponse");
    private final static QName _CreateMedic_QNAME = new QName("http://Servicios/", "createMedic");
    private final static QName _CountPatientsByMedicResponse_QNAME = new QName("http://Servicios/", "countPatientsByMedicResponse");
    private final static QName _ListarMedicosResponse_QNAME = new QName("http://Servicios/", "listarMedicosResponse");
    private final static QName _UpdatePaciente_QNAME = new QName("http://Servicios/", "updatePaciente");
    private final static QName _ListarMedicos_QNAME = new QName("http://Servicios/", "listarMedicos");
    private final static QName _CreateMAgendaResponse_QNAME = new QName("http://Servicios/", "createMAgendaResponse");
    private final static QName _EncontrarEspecialidadResponse_QNAME = new QName("http://Servicios/", "encontrarEspecialidadResponse");
    private final static QName _EncontrarPaciente_QNAME = new QName("http://Servicios/", "encontrarPaciente");
    private final static QName _FindCitas_QNAME = new QName("http://Servicios/", "findCitas");
    private final static QName _ListarMedicoByEspecialidad_QNAME = new QName("http://Servicios/", "listarMedicoByEspecialidad");
    private final static QName _ListarAllCitas_QNAME = new QName("http://Servicios/", "listarAllCitas");
    private final static QName _Logeo_QNAME = new QName("http://Servicios/", "logeo");
    private final static QName _CreateEspecialityResponse_QNAME = new QName("http://Servicios/", "createEspecialityResponse");
    private final static QName _EncontrarMedico_QNAME = new QName("http://Servicios/", "encontrarMedico");
    private final static QName _LogeoResponse_QNAME = new QName("http://Servicios/", "logeoResponse");
    private final static QName _Hello_QNAME = new QName("http://Servicios/", "hello");
    private final static QName _ListarAllCitasResponse_QNAME = new QName("http://Servicios/", "listarAllCitasResponse");
    private final static QName _CountMedicsBySpecialty_QNAME = new QName("http://Servicios/", "countMedicsBySpecialty");
    private final static QName _CountMedicsByShiftResponse_QNAME = new QName("http://Servicios/", "countMedicsByShiftResponse");
    private final static QName _ListarCitasByIdPacienteResponse_QNAME = new QName("http://Servicios/", "listarCitasByIdPacienteResponse");
    private final static QName _PacientePorEspecialidadResponse_QNAME = new QName("http://Servicios/", "pacientePorEspecialidadResponse");
    private final static QName _HelloResponse_QNAME = new QName("http://Servicios/", "helloResponse");
    private final static QName _EncontrarUltimoRegistroResponse_QNAME = new QName("http://Servicios/", "encontrarUltimoRegistroResponse");
    private final static QName _EncontrarMedicoResponse_QNAME = new QName("http://Servicios/", "encontrarMedicoResponse");
    private final static QName _RegistrarCitaResponse_QNAME = new QName("http://Servicios/", "registrarCitaResponse");
    private final static QName _RegistrarCita_QNAME = new QName("http://Servicios/", "registrarCita");
    private final static QName _EncontrarAgendaResponse_QNAME = new QName("http://Servicios/", "encontrarAgendaResponse");
    private final static QName _ListarAgendaByMedicoResponse_QNAME = new QName("http://Servicios/", "listarAgendaByMedicoResponse");
    private final static QName _CountMedicsByShift_QNAME = new QName("http://Servicios/", "countMedicsByShift");
    private final static QName _CountMedicsBySpecialtyResponse_QNAME = new QName("http://Servicios/", "countMedicsBySpecialtyResponse");
    private final static QName _CreateMedicResponse_QNAME = new QName("http://Servicios/", "createMedicResponse");
    private final static QName _EncontrarAgenda_QNAME = new QName("http://Servicios/", "encontrarAgenda");
    private final static QName _PacientePorEspecialidad_QNAME = new QName("http://Servicios/", "pacientePorEspecialidad");
    private final static QName _ListarMedicoByEspecialidadResponse_QNAME = new QName("http://Servicios/", "listarMedicoByEspecialidadResponse");
    private final static QName _EncontrarEspecialidad_QNAME = new QName("http://Servicios/", "encontrarEspecialidad");
    private final static QName _ListarEspecialidadesResponse_QNAME = new QName("http://Servicios/", "listarEspecialidadesResponse");
    private final static QName _CountPatientsByMedic_QNAME = new QName("http://Servicios/", "countPatientsByMedic");
    private final static QName _CreateMAgenda_QNAME = new QName("http://Servicios/", "createMAgenda");
    private final static QName _ListarEspecialidades_QNAME = new QName("http://Servicios/", "listarEspecialidades");
    private final static QName _CountAppointmentsByPatient_QNAME = new QName("http://Servicios/", "countAppointmentsByPatient");
    private final static QName _RegistrarPaciente_QNAME = new QName("http://Servicios/", "registrarPaciente");
    private final static QName _CreateEspeciality_QNAME = new QName("http://Servicios/", "createEspeciality");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: Services
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link CreateEspeciality }
     * 
     */
    public CreateEspeciality createCreateEspeciality() {
        return new CreateEspeciality();
    }

    /**
     * Create an instance of {@link CreateMAgenda }
     * 
     */
    public CreateMAgenda createCreateMAgenda() {
        return new CreateMAgenda();
    }

    /**
     * Create an instance of {@link RegistrarPaciente }
     * 
     */
    public RegistrarPaciente createRegistrarPaciente() {
        return new RegistrarPaciente();
    }

    /**
     * Create an instance of {@link ListarEspecialidades }
     * 
     */
    public ListarEspecialidades createListarEspecialidades() {
        return new ListarEspecialidades();
    }

    /**
     * Create an instance of {@link CountAppointmentsByPatient }
     * 
     */
    public CountAppointmentsByPatient createCountAppointmentsByPatient() {
        return new CountAppointmentsByPatient();
    }

    /**
     * Create an instance of {@link CountPatientsByMedic }
     * 
     */
    public CountPatientsByMedic createCountPatientsByMedic() {
        return new CountPatientsByMedic();
    }

    /**
     * Create an instance of {@link ListarEspecialidadesResponse }
     * 
     */
    public ListarEspecialidadesResponse createListarEspecialidadesResponse() {
        return new ListarEspecialidadesResponse();
    }

    /**
     * Create an instance of {@link EncontrarEspecialidad }
     * 
     */
    public EncontrarEspecialidad createEncontrarEspecialidad() {
        return new EncontrarEspecialidad();
    }

    /**
     * Create an instance of {@link CountMedicsByShift }
     * 
     */
    public CountMedicsByShift createCountMedicsByShift() {
        return new CountMedicsByShift();
    }

    /**
     * Create an instance of {@link CountMedicsBySpecialtyResponse }
     * 
     */
    public CountMedicsBySpecialtyResponse createCountMedicsBySpecialtyResponse() {
        return new CountMedicsBySpecialtyResponse();
    }

    /**
     * Create an instance of {@link ListarMedicoByEspecialidadResponse }
     * 
     */
    public ListarMedicoByEspecialidadResponse createListarMedicoByEspecialidadResponse() {
        return new ListarMedicoByEspecialidadResponse();
    }

    /**
     * Create an instance of {@link CreateMedicResponse }
     * 
     */
    public CreateMedicResponse createCreateMedicResponse() {
        return new CreateMedicResponse();
    }

    /**
     * Create an instance of {@link EncontrarAgenda }
     * 
     */
    public EncontrarAgenda createEncontrarAgenda() {
        return new EncontrarAgenda();
    }

    /**
     * Create an instance of {@link PacientePorEspecialidad }
     * 
     */
    public PacientePorEspecialidad createPacientePorEspecialidad() {
        return new PacientePorEspecialidad();
    }

    /**
     * Create an instance of {@link EncontrarAgendaResponse }
     * 
     */
    public EncontrarAgendaResponse createEncontrarAgendaResponse() {
        return new EncontrarAgendaResponse();
    }

    /**
     * Create an instance of {@link ListarAgendaByMedicoResponse }
     * 
     */
    public ListarAgendaByMedicoResponse createListarAgendaByMedicoResponse() {
        return new ListarAgendaByMedicoResponse();
    }

    /**
     * Create an instance of {@link RegistrarCitaResponse }
     * 
     */
    public RegistrarCitaResponse createRegistrarCitaResponse() {
        return new RegistrarCitaResponse();
    }

    /**
     * Create an instance of {@link RegistrarCita }
     * 
     */
    public RegistrarCita createRegistrarCita() {
        return new RegistrarCita();
    }

    /**
     * Create an instance of {@link CountMedicsByShiftResponse }
     * 
     */
    public CountMedicsByShiftResponse createCountMedicsByShiftResponse() {
        return new CountMedicsByShiftResponse();
    }

    /**
     * Create an instance of {@link ListarCitasByIdPacienteResponse }
     * 
     */
    public ListarCitasByIdPacienteResponse createListarCitasByIdPacienteResponse() {
        return new ListarCitasByIdPacienteResponse();
    }

    /**
     * Create an instance of {@link PacientePorEspecialidadResponse }
     * 
     */
    public PacientePorEspecialidadResponse createPacientePorEspecialidadResponse() {
        return new PacientePorEspecialidadResponse();
    }

    /**
     * Create an instance of {@link EncontrarMedicoResponse }
     * 
     */
    public EncontrarMedicoResponse createEncontrarMedicoResponse() {
        return new EncontrarMedicoResponse();
    }

    /**
     * Create an instance of {@link HelloResponse }
     * 
     */
    public HelloResponse createHelloResponse() {
        return new HelloResponse();
    }

    /**
     * Create an instance of {@link EncontrarUltimoRegistroResponse }
     * 
     */
    public EncontrarUltimoRegistroResponse createEncontrarUltimoRegistroResponse() {
        return new EncontrarUltimoRegistroResponse();
    }

    /**
     * Create an instance of {@link Hello }
     * 
     */
    public Hello createHello() {
        return new Hello();
    }

    /**
     * Create an instance of {@link CountMedicsBySpecialty }
     * 
     */
    public CountMedicsBySpecialty createCountMedicsBySpecialty() {
        return new CountMedicsBySpecialty();
    }

    /**
     * Create an instance of {@link ListarAllCitasResponse }
     * 
     */
    public ListarAllCitasResponse createListarAllCitasResponse() {
        return new ListarAllCitasResponse();
    }

    /**
     * Create an instance of {@link CreateEspecialityResponse }
     * 
     */
    public CreateEspecialityResponse createCreateEspecialityResponse() {
        return new CreateEspecialityResponse();
    }

    /**
     * Create an instance of {@link EncontrarMedico }
     * 
     */
    public EncontrarMedico createEncontrarMedico() {
        return new EncontrarMedico();
    }

    /**
     * Create an instance of {@link LogeoResponse }
     * 
     */
    public LogeoResponse createLogeoResponse() {
        return new LogeoResponse();
    }

    /**
     * Create an instance of {@link ListarAllCitas }
     * 
     */
    public ListarAllCitas createListarAllCitas() {
        return new ListarAllCitas();
    }

    /**
     * Create an instance of {@link Logeo }
     * 
     */
    public Logeo createLogeo() {
        return new Logeo();
    }

    /**
     * Create an instance of {@link CreateMAgendaResponse }
     * 
     */
    public CreateMAgendaResponse createCreateMAgendaResponse() {
        return new CreateMAgendaResponse();
    }

    /**
     * Create an instance of {@link EncontrarEspecialidadResponse }
     * 
     */
    public EncontrarEspecialidadResponse createEncontrarEspecialidadResponse() {
        return new EncontrarEspecialidadResponse();
    }

    /**
     * Create an instance of {@link EncontrarPaciente }
     * 
     */
    public EncontrarPaciente createEncontrarPaciente() {
        return new EncontrarPaciente();
    }

    /**
     * Create an instance of {@link FindCitas }
     * 
     */
    public FindCitas createFindCitas() {
        return new FindCitas();
    }

    /**
     * Create an instance of {@link ListarMedicoByEspecialidad }
     * 
     */
    public ListarMedicoByEspecialidad createListarMedicoByEspecialidad() {
        return new ListarMedicoByEspecialidad();
    }

    /**
     * Create an instance of {@link CountPatientsByMedicResponse }
     * 
     */
    public CountPatientsByMedicResponse createCountPatientsByMedicResponse() {
        return new CountPatientsByMedicResponse();
    }

    /**
     * Create an instance of {@link CreateMedic }
     * 
     */
    public CreateMedic createCreateMedic() {
        return new CreateMedic();
    }

    /**
     * Create an instance of {@link ListarMedicos }
     * 
     */
    public ListarMedicos createListarMedicos() {
        return new ListarMedicos();
    }

    /**
     * Create an instance of {@link ListarMedicosResponse }
     * 
     */
    public ListarMedicosResponse createListarMedicosResponse() {
        return new ListarMedicosResponse();
    }

    /**
     * Create an instance of {@link UpdatePaciente }
     * 
     */
    public UpdatePaciente createUpdatePaciente() {
        return new UpdatePaciente();
    }

    /**
     * Create an instance of {@link EncontrarUltimoRegistro }
     * 
     */
    public EncontrarUltimoRegistro createEncontrarUltimoRegistro() {
        return new EncontrarUltimoRegistro();
    }

    /**
     * Create an instance of {@link CountAppointmentsByPatientResponse }
     * 
     */
    public CountAppointmentsByPatientResponse createCountAppointmentsByPatientResponse() {
        return new CountAppointmentsByPatientResponse();
    }

    /**
     * Create an instance of {@link UpdatePacienteResponse }
     * 
     */
    public UpdatePacienteResponse createUpdatePacienteResponse() {
        return new UpdatePacienteResponse();
    }

    /**
     * Create an instance of {@link EncontrarCita }
     * 
     */
    public EncontrarCita createEncontrarCita() {
        return new EncontrarCita();
    }

    /**
     * Create an instance of {@link RegistrarPacienteResponse }
     * 
     */
    public RegistrarPacienteResponse createRegistrarPacienteResponse() {
        return new RegistrarPacienteResponse();
    }

    /**
     * Create an instance of {@link FindCitasResponse }
     * 
     */
    public FindCitasResponse createFindCitasResponse() {
        return new FindCitasResponse();
    }

    /**
     * Create an instance of {@link ListarCitasByIdPaciente }
     * 
     */
    public ListarCitasByIdPaciente createListarCitasByIdPaciente() {
        return new ListarCitasByIdPaciente();
    }

    /**
     * Create an instance of {@link ListarAgendaByMedico }
     * 
     */
    public ListarAgendaByMedico createListarAgendaByMedico() {
        return new ListarAgendaByMedico();
    }

    /**
     * Create an instance of {@link EncontrarPacienteResponse }
     * 
     */
    public EncontrarPacienteResponse createEncontrarPacienteResponse() {
        return new EncontrarPacienteResponse();
    }

    /**
     * Create an instance of {@link EncontrarCitaUltima }
     * 
     */
    public EncontrarCitaUltima createEncontrarCitaUltima() {
        return new EncontrarCitaUltima();
    }

    /**
     * Create an instance of {@link ListarAllAgendaResponse }
     * 
     */
    public ListarAllAgendaResponse createListarAllAgendaResponse() {
        return new ListarAllAgendaResponse();
    }

    /**
     * Create an instance of {@link EncontrarCitaResponse }
     * 
     */
    public EncontrarCitaResponse createEncontrarCitaResponse() {
        return new EncontrarCitaResponse();
    }

    /**
     * Create an instance of {@link ListarAllAgenda }
     * 
     */
    public ListarAllAgenda createListarAllAgenda() {
        return new ListarAllAgenda();
    }

    /**
     * Create an instance of {@link EncontrarCitaUltimaResponse }
     * 
     */
    public EncontrarCitaUltimaResponse createEncontrarCitaUltimaResponse() {
        return new EncontrarCitaUltimaResponse();
    }

    /**
     * Create an instance of {@link AgendaDTO }
     * 
     */
    public AgendaDTO createAgendaDTO() {
        return new AgendaDTO();
    }

    /**
     * Create an instance of {@link Especialidad }
     * 
     */
    public Especialidad createEspecialidad() {
        return new Especialidad();
    }

    /**
     * Create an instance of {@link CitaDTO }
     * 
     */
    public CitaDTO createCitaDTO() {
        return new CitaDTO();
    }

    /**
     * Create an instance of {@link Paciente }
     * 
     */
    public Paciente createPaciente() {
        return new Paciente();
    }

    /**
     * Create an instance of {@link MedicoDTO }
     * 
     */
    public MedicoDTO createMedicoDTO() {
        return new MedicoDTO();
    }

    /**
     * Create an instance of {@link Agenda }
     * 
     */
    public Agenda createAgenda() {
        return new Agenda();
    }

    /**
     * Create an instance of {@link Medico }
     * 
     */
    public Medico createMedico() {
        return new Medico();
    }

    /**
     * Create an instance of {@link Cita }
     * 
     */
    public Cita createCita() {
        return new Cita();
    }

    /**
     * Create an instance of {@link AnyTypeArray }
     * 
     */
    public AnyTypeArray createAnyTypeArray() {
        return new AnyTypeArray();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarAllAgendaResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "listarAllAgendaResponse")
    public JAXBElement<ListarAllAgendaResponse> createListarAllAgendaResponse(ListarAllAgendaResponse value) {
        return new JAXBElement<ListarAllAgendaResponse>(_ListarAllAgendaResponse_QNAME, ListarAllAgendaResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EncontrarCitaResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "encontrarCitaResponse")
    public JAXBElement<EncontrarCitaResponse> createEncontrarCitaResponse(EncontrarCitaResponse value) {
        return new JAXBElement<EncontrarCitaResponse>(_EncontrarCitaResponse_QNAME, EncontrarCitaResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarAllAgenda }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "listarAllAgenda")
    public JAXBElement<ListarAllAgenda> createListarAllAgenda(ListarAllAgenda value) {
        return new JAXBElement<ListarAllAgenda>(_ListarAllAgenda_QNAME, ListarAllAgenda.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EncontrarCitaUltima }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "encontrarCitaUltima")
    public JAXBElement<EncontrarCitaUltima> createEncontrarCitaUltima(EncontrarCitaUltima value) {
        return new JAXBElement<EncontrarCitaUltima>(_EncontrarCitaUltima_QNAME, EncontrarCitaUltima.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EncontrarCitaUltimaResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "encontrarCitaUltimaResponse")
    public JAXBElement<EncontrarCitaUltimaResponse> createEncontrarCitaUltimaResponse(EncontrarCitaUltimaResponse value) {
        return new JAXBElement<EncontrarCitaUltimaResponse>(_EncontrarCitaUltimaResponse_QNAME, EncontrarCitaUltimaResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarAgendaByMedico }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "listarAgendaByMedico")
    public JAXBElement<ListarAgendaByMedico> createListarAgendaByMedico(ListarAgendaByMedico value) {
        return new JAXBElement<ListarAgendaByMedico>(_ListarAgendaByMedico_QNAME, ListarAgendaByMedico.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FindCitasResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "findCitasResponse")
    public JAXBElement<FindCitasResponse> createFindCitasResponse(FindCitasResponse value) {
        return new JAXBElement<FindCitasResponse>(_FindCitasResponse_QNAME, FindCitasResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarCitasByIdPaciente }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "listarCitasByIdPaciente")
    public JAXBElement<ListarCitasByIdPaciente> createListarCitasByIdPaciente(ListarCitasByIdPaciente value) {
        return new JAXBElement<ListarCitasByIdPaciente>(_ListarCitasByIdPaciente_QNAME, ListarCitasByIdPaciente.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EncontrarPacienteResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "encontrarPacienteResponse")
    public JAXBElement<EncontrarPacienteResponse> createEncontrarPacienteResponse(EncontrarPacienteResponse value) {
        return new JAXBElement<EncontrarPacienteResponse>(_EncontrarPacienteResponse_QNAME, EncontrarPacienteResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EncontrarCita }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "encontrarCita")
    public JAXBElement<EncontrarCita> createEncontrarCita(EncontrarCita value) {
        return new JAXBElement<EncontrarCita>(_EncontrarCita_QNAME, EncontrarCita.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link RegistrarPacienteResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "registrarPacienteResponse")
    public JAXBElement<RegistrarPacienteResponse> createRegistrarPacienteResponse(RegistrarPacienteResponse value) {
        return new JAXBElement<RegistrarPacienteResponse>(_RegistrarPacienteResponse_QNAME, RegistrarPacienteResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EncontrarUltimoRegistro }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "encontrarUltimoRegistro")
    public JAXBElement<EncontrarUltimoRegistro> createEncontrarUltimoRegistro(EncontrarUltimoRegistro value) {
        return new JAXBElement<EncontrarUltimoRegistro>(_EncontrarUltimoRegistro_QNAME, EncontrarUltimoRegistro.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CountAppointmentsByPatientResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "countAppointmentsByPatientResponse")
    public JAXBElement<CountAppointmentsByPatientResponse> createCountAppointmentsByPatientResponse(CountAppointmentsByPatientResponse value) {
        return new JAXBElement<CountAppointmentsByPatientResponse>(_CountAppointmentsByPatientResponse_QNAME, CountAppointmentsByPatientResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link UpdatePacienteResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "updatePacienteResponse")
    public JAXBElement<UpdatePacienteResponse> createUpdatePacienteResponse(UpdatePacienteResponse value) {
        return new JAXBElement<UpdatePacienteResponse>(_UpdatePacienteResponse_QNAME, UpdatePacienteResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CreateMedic }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "createMedic")
    public JAXBElement<CreateMedic> createCreateMedic(CreateMedic value) {
        return new JAXBElement<CreateMedic>(_CreateMedic_QNAME, CreateMedic.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CountPatientsByMedicResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "countPatientsByMedicResponse")
    public JAXBElement<CountPatientsByMedicResponse> createCountPatientsByMedicResponse(CountPatientsByMedicResponse value) {
        return new JAXBElement<CountPatientsByMedicResponse>(_CountPatientsByMedicResponse_QNAME, CountPatientsByMedicResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarMedicosResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "listarMedicosResponse")
    public JAXBElement<ListarMedicosResponse> createListarMedicosResponse(ListarMedicosResponse value) {
        return new JAXBElement<ListarMedicosResponse>(_ListarMedicosResponse_QNAME, ListarMedicosResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link UpdatePaciente }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "updatePaciente")
    public JAXBElement<UpdatePaciente> createUpdatePaciente(UpdatePaciente value) {
        return new JAXBElement<UpdatePaciente>(_UpdatePaciente_QNAME, UpdatePaciente.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarMedicos }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "listarMedicos")
    public JAXBElement<ListarMedicos> createListarMedicos(ListarMedicos value) {
        return new JAXBElement<ListarMedicos>(_ListarMedicos_QNAME, ListarMedicos.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CreateMAgendaResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "createMAgendaResponse")
    public JAXBElement<CreateMAgendaResponse> createCreateMAgendaResponse(CreateMAgendaResponse value) {
        return new JAXBElement<CreateMAgendaResponse>(_CreateMAgendaResponse_QNAME, CreateMAgendaResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EncontrarEspecialidadResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "encontrarEspecialidadResponse")
    public JAXBElement<EncontrarEspecialidadResponse> createEncontrarEspecialidadResponse(EncontrarEspecialidadResponse value) {
        return new JAXBElement<EncontrarEspecialidadResponse>(_EncontrarEspecialidadResponse_QNAME, EncontrarEspecialidadResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EncontrarPaciente }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "encontrarPaciente")
    public JAXBElement<EncontrarPaciente> createEncontrarPaciente(EncontrarPaciente value) {
        return new JAXBElement<EncontrarPaciente>(_EncontrarPaciente_QNAME, EncontrarPaciente.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FindCitas }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "findCitas")
    public JAXBElement<FindCitas> createFindCitas(FindCitas value) {
        return new JAXBElement<FindCitas>(_FindCitas_QNAME, FindCitas.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarMedicoByEspecialidad }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "listarMedicoByEspecialidad")
    public JAXBElement<ListarMedicoByEspecialidad> createListarMedicoByEspecialidad(ListarMedicoByEspecialidad value) {
        return new JAXBElement<ListarMedicoByEspecialidad>(_ListarMedicoByEspecialidad_QNAME, ListarMedicoByEspecialidad.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarAllCitas }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "listarAllCitas")
    public JAXBElement<ListarAllCitas> createListarAllCitas(ListarAllCitas value) {
        return new JAXBElement<ListarAllCitas>(_ListarAllCitas_QNAME, ListarAllCitas.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Logeo }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "logeo")
    public JAXBElement<Logeo> createLogeo(Logeo value) {
        return new JAXBElement<Logeo>(_Logeo_QNAME, Logeo.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CreateEspecialityResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "createEspecialityResponse")
    public JAXBElement<CreateEspecialityResponse> createCreateEspecialityResponse(CreateEspecialityResponse value) {
        return new JAXBElement<CreateEspecialityResponse>(_CreateEspecialityResponse_QNAME, CreateEspecialityResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EncontrarMedico }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "encontrarMedico")
    public JAXBElement<EncontrarMedico> createEncontrarMedico(EncontrarMedico value) {
        return new JAXBElement<EncontrarMedico>(_EncontrarMedico_QNAME, EncontrarMedico.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LogeoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "logeoResponse")
    public JAXBElement<LogeoResponse> createLogeoResponse(LogeoResponse value) {
        return new JAXBElement<LogeoResponse>(_LogeoResponse_QNAME, LogeoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Hello }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "hello")
    public JAXBElement<Hello> createHello(Hello value) {
        return new JAXBElement<Hello>(_Hello_QNAME, Hello.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarAllCitasResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "listarAllCitasResponse")
    public JAXBElement<ListarAllCitasResponse> createListarAllCitasResponse(ListarAllCitasResponse value) {
        return new JAXBElement<ListarAllCitasResponse>(_ListarAllCitasResponse_QNAME, ListarAllCitasResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CountMedicsBySpecialty }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "countMedicsBySpecialty")
    public JAXBElement<CountMedicsBySpecialty> createCountMedicsBySpecialty(CountMedicsBySpecialty value) {
        return new JAXBElement<CountMedicsBySpecialty>(_CountMedicsBySpecialty_QNAME, CountMedicsBySpecialty.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CountMedicsByShiftResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "countMedicsByShiftResponse")
    public JAXBElement<CountMedicsByShiftResponse> createCountMedicsByShiftResponse(CountMedicsByShiftResponse value) {
        return new JAXBElement<CountMedicsByShiftResponse>(_CountMedicsByShiftResponse_QNAME, CountMedicsByShiftResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarCitasByIdPacienteResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "listarCitasByIdPacienteResponse")
    public JAXBElement<ListarCitasByIdPacienteResponse> createListarCitasByIdPacienteResponse(ListarCitasByIdPacienteResponse value) {
        return new JAXBElement<ListarCitasByIdPacienteResponse>(_ListarCitasByIdPacienteResponse_QNAME, ListarCitasByIdPacienteResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link PacientePorEspecialidadResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "pacientePorEspecialidadResponse")
    public JAXBElement<PacientePorEspecialidadResponse> createPacientePorEspecialidadResponse(PacientePorEspecialidadResponse value) {
        return new JAXBElement<PacientePorEspecialidadResponse>(_PacientePorEspecialidadResponse_QNAME, PacientePorEspecialidadResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link HelloResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "helloResponse")
    public JAXBElement<HelloResponse> createHelloResponse(HelloResponse value) {
        return new JAXBElement<HelloResponse>(_HelloResponse_QNAME, HelloResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EncontrarUltimoRegistroResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "encontrarUltimoRegistroResponse")
    public JAXBElement<EncontrarUltimoRegistroResponse> createEncontrarUltimoRegistroResponse(EncontrarUltimoRegistroResponse value) {
        return new JAXBElement<EncontrarUltimoRegistroResponse>(_EncontrarUltimoRegistroResponse_QNAME, EncontrarUltimoRegistroResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EncontrarMedicoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "encontrarMedicoResponse")
    public JAXBElement<EncontrarMedicoResponse> createEncontrarMedicoResponse(EncontrarMedicoResponse value) {
        return new JAXBElement<EncontrarMedicoResponse>(_EncontrarMedicoResponse_QNAME, EncontrarMedicoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link RegistrarCitaResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "registrarCitaResponse")
    public JAXBElement<RegistrarCitaResponse> createRegistrarCitaResponse(RegistrarCitaResponse value) {
        return new JAXBElement<RegistrarCitaResponse>(_RegistrarCitaResponse_QNAME, RegistrarCitaResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link RegistrarCita }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "registrarCita")
    public JAXBElement<RegistrarCita> createRegistrarCita(RegistrarCita value) {
        return new JAXBElement<RegistrarCita>(_RegistrarCita_QNAME, RegistrarCita.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EncontrarAgendaResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "encontrarAgendaResponse")
    public JAXBElement<EncontrarAgendaResponse> createEncontrarAgendaResponse(EncontrarAgendaResponse value) {
        return new JAXBElement<EncontrarAgendaResponse>(_EncontrarAgendaResponse_QNAME, EncontrarAgendaResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarAgendaByMedicoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "listarAgendaByMedicoResponse")
    public JAXBElement<ListarAgendaByMedicoResponse> createListarAgendaByMedicoResponse(ListarAgendaByMedicoResponse value) {
        return new JAXBElement<ListarAgendaByMedicoResponse>(_ListarAgendaByMedicoResponse_QNAME, ListarAgendaByMedicoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CountMedicsByShift }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "countMedicsByShift")
    public JAXBElement<CountMedicsByShift> createCountMedicsByShift(CountMedicsByShift value) {
        return new JAXBElement<CountMedicsByShift>(_CountMedicsByShift_QNAME, CountMedicsByShift.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CountMedicsBySpecialtyResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "countMedicsBySpecialtyResponse")
    public JAXBElement<CountMedicsBySpecialtyResponse> createCountMedicsBySpecialtyResponse(CountMedicsBySpecialtyResponse value) {
        return new JAXBElement<CountMedicsBySpecialtyResponse>(_CountMedicsBySpecialtyResponse_QNAME, CountMedicsBySpecialtyResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CreateMedicResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "createMedicResponse")
    public JAXBElement<CreateMedicResponse> createCreateMedicResponse(CreateMedicResponse value) {
        return new JAXBElement<CreateMedicResponse>(_CreateMedicResponse_QNAME, CreateMedicResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EncontrarAgenda }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "encontrarAgenda")
    public JAXBElement<EncontrarAgenda> createEncontrarAgenda(EncontrarAgenda value) {
        return new JAXBElement<EncontrarAgenda>(_EncontrarAgenda_QNAME, EncontrarAgenda.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link PacientePorEspecialidad }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "pacientePorEspecialidad")
    public JAXBElement<PacientePorEspecialidad> createPacientePorEspecialidad(PacientePorEspecialidad value) {
        return new JAXBElement<PacientePorEspecialidad>(_PacientePorEspecialidad_QNAME, PacientePorEspecialidad.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarMedicoByEspecialidadResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "listarMedicoByEspecialidadResponse")
    public JAXBElement<ListarMedicoByEspecialidadResponse> createListarMedicoByEspecialidadResponse(ListarMedicoByEspecialidadResponse value) {
        return new JAXBElement<ListarMedicoByEspecialidadResponse>(_ListarMedicoByEspecialidadResponse_QNAME, ListarMedicoByEspecialidadResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EncontrarEspecialidad }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "encontrarEspecialidad")
    public JAXBElement<EncontrarEspecialidad> createEncontrarEspecialidad(EncontrarEspecialidad value) {
        return new JAXBElement<EncontrarEspecialidad>(_EncontrarEspecialidad_QNAME, EncontrarEspecialidad.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarEspecialidadesResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "listarEspecialidadesResponse")
    public JAXBElement<ListarEspecialidadesResponse> createListarEspecialidadesResponse(ListarEspecialidadesResponse value) {
        return new JAXBElement<ListarEspecialidadesResponse>(_ListarEspecialidadesResponse_QNAME, ListarEspecialidadesResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CountPatientsByMedic }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "countPatientsByMedic")
    public JAXBElement<CountPatientsByMedic> createCountPatientsByMedic(CountPatientsByMedic value) {
        return new JAXBElement<CountPatientsByMedic>(_CountPatientsByMedic_QNAME, CountPatientsByMedic.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CreateMAgenda }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "createMAgenda")
    public JAXBElement<CreateMAgenda> createCreateMAgenda(CreateMAgenda value) {
        return new JAXBElement<CreateMAgenda>(_CreateMAgenda_QNAME, CreateMAgenda.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarEspecialidades }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "listarEspecialidades")
    public JAXBElement<ListarEspecialidades> createListarEspecialidades(ListarEspecialidades value) {
        return new JAXBElement<ListarEspecialidades>(_ListarEspecialidades_QNAME, ListarEspecialidades.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CountAppointmentsByPatient }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "countAppointmentsByPatient")
    public JAXBElement<CountAppointmentsByPatient> createCountAppointmentsByPatient(CountAppointmentsByPatient value) {
        return new JAXBElement<CountAppointmentsByPatient>(_CountAppointmentsByPatient_QNAME, CountAppointmentsByPatient.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link RegistrarPaciente }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "registrarPaciente")
    public JAXBElement<RegistrarPaciente> createRegistrarPaciente(RegistrarPaciente value) {
        return new JAXBElement<RegistrarPaciente>(_RegistrarPaciente_QNAME, RegistrarPaciente.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CreateEspeciality }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Servicios/", name = "createEspeciality")
    public JAXBElement<CreateEspeciality> createCreateEspeciality(CreateEspeciality value) {
        return new JAXBElement<CreateEspeciality>(_CreateEspeciality_QNAME, CreateEspeciality.class, null, value);
    }

}
