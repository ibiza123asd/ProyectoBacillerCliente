
package Services;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para citaDTO complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="citaDTO">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="idCita" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/>
 *         &lt;element name="idMedico" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/>
 *         &lt;element name="idPaciente" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/>
 *         &lt;element name="nombreMedico" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="nombrePaciente" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="orden" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "citaDTO", propOrder = {
    "idCita",
    "idMedico",
    "idPaciente",
    "nombreMedico",
    "nombrePaciente",
    "orden"
})
public class CitaDTO {

    protected Integer idCita;
    protected Integer idMedico;
    protected Integer idPaciente;
    protected String nombreMedico;
    protected String nombrePaciente;
    protected Integer orden;

    /**
     * Obtiene el valor de la propiedad idCita.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getIdCita() {
        return idCita;
    }

    /**
     * Define el valor de la propiedad idCita.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setIdCita(Integer value) {
        this.idCita = value;
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
     * Obtiene el valor de la propiedad idPaciente.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getIdPaciente() {
        return idPaciente;
    }

    /**
     * Define el valor de la propiedad idPaciente.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setIdPaciente(Integer value) {
        this.idPaciente = value;
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
     * Obtiene el valor de la propiedad nombrePaciente.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNombrePaciente() {
        return nombrePaciente;
    }

    /**
     * Define el valor de la propiedad nombrePaciente.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNombrePaciente(String value) {
        this.nombrePaciente = value;
    }

    /**
     * Obtiene el valor de la propiedad orden.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getOrden() {
        return orden;
    }

    /**
     * Define el valor de la propiedad orden.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setOrden(Integer value) {
        this.orden = value;
    }

}
