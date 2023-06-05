
package Services;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para cita complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="cita">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="costoCita" type="{http://www.w3.org/2001/XMLSchema}double" minOccurs="0"/>
 *         &lt;element name="idCita" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/>
 *         &lt;element name="idMedico" type="{http://Servicios/}medico" minOccurs="0"/>
 *         &lt;element name="idPaciente" type="{http://Servicios/}paciente" minOccurs="0"/>
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
@XmlType(name = "cita", propOrder = {
    "costoCita",
    "idCita",
    "idMedico",
    "idPaciente",
    "orden"
})
public class Cita {

    protected Double costoCita;
    protected Integer idCita;
    protected Medico idMedico;
    protected Paciente idPaciente;
    protected Integer orden;

    /**
     * Obtiene el valor de la propiedad costoCita.
     * 
     * @return
     *     possible object is
     *     {@link Double }
     *     
     */
    public Double getCostoCita() {
        return costoCita;
    }

    /**
     * Define el valor de la propiedad costoCita.
     * 
     * @param value
     *     allowed object is
     *     {@link Double }
     *     
     */
    public void setCostoCita(Double value) {
        this.costoCita = value;
    }

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
     *     {@link Medico }
     *     
     */
    public Medico getIdMedico() {
        return idMedico;
    }

    /**
     * Define el valor de la propiedad idMedico.
     * 
     * @param value
     *     allowed object is
     *     {@link Medico }
     *     
     */
    public void setIdMedico(Medico value) {
        this.idMedico = value;
    }

    /**
     * Obtiene el valor de la propiedad idPaciente.
     * 
     * @return
     *     possible object is
     *     {@link Paciente }
     *     
     */
    public Paciente getIdPaciente() {
        return idPaciente;
    }

    /**
     * Define el valor de la propiedad idPaciente.
     * 
     * @param value
     *     allowed object is
     *     {@link Paciente }
     *     
     */
    public void setIdPaciente(Paciente value) {
        this.idPaciente = value;
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
