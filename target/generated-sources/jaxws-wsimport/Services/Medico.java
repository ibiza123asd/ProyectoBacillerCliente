
package Services;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para medico complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="medico">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="agendaList" type="{http://Servicios/}agenda" maxOccurs="unbounded" minOccurs="0"/>
 *         &lt;element name="apellidoMat" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="apellidoPat" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="idEspecialidad" type="{http://Servicios/}especialidad" minOccurs="0"/>
 *         &lt;element name="idMedico" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/>
 *         &lt;element name="nombreMedico" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="telefono" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "medico", propOrder = {
    "agendaList",
    "apellidoMat",
    "apellidoPat",
    "idEspecialidad",
    "idMedico",
    "nombreMedico",
    "telefono"
})
public class Medico {

    @XmlElement(nillable = true)
    protected List<Agenda> agendaList;
    protected String apellidoMat;
    protected String apellidoPat;
    protected Especialidad idEspecialidad;
    protected Integer idMedico;
    protected String nombreMedico;
    protected String telefono;

    /**
     * Gets the value of the agendaList property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the agendaList property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getAgendaList().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Agenda }
     * 
     * 
     */
    public List<Agenda> getAgendaList() {
        if (agendaList == null) {
            agendaList = new ArrayList<Agenda>();
        }
        return this.agendaList;
    }

    /**
     * Obtiene el valor de la propiedad apellidoMat.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getApellidoMat() {
        return apellidoMat;
    }

    /**
     * Define el valor de la propiedad apellidoMat.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setApellidoMat(String value) {
        this.apellidoMat = value;
    }

    /**
     * Obtiene el valor de la propiedad apellidoPat.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getApellidoPat() {
        return apellidoPat;
    }

    /**
     * Define el valor de la propiedad apellidoPat.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setApellidoPat(String value) {
        this.apellidoPat = value;
    }

    /**
     * Obtiene el valor de la propiedad idEspecialidad.
     * 
     * @return
     *     possible object is
     *     {@link Especialidad }
     *     
     */
    public Especialidad getIdEspecialidad() {
        return idEspecialidad;
    }

    /**
     * Define el valor de la propiedad idEspecialidad.
     * 
     * @param value
     *     allowed object is
     *     {@link Especialidad }
     *     
     */
    public void setIdEspecialidad(Especialidad value) {
        this.idEspecialidad = value;
    }

    /**
     * Obtiene el valor de la propiedad idMedico.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getIdMedico() {
        return idMedico;
    }

    /**
     * Define el valor de la propiedad idMedico.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setIdMedico(Integer value) {
        this.idMedico = value;
    }

    /**
     * Obtiene el valor de la propiedad nombreMedico.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNombreMedico() {
        return nombreMedico;
    }

    /**
     * Define el valor de la propiedad nombreMedico.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNombreMedico(String value) {
        this.nombreMedico = value;
    }

    /**
     * Obtiene el valor de la propiedad telefono.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * Define el valor de la propiedad telefono.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTelefono(String value) {
        this.telefono = value;
    }

}
