
package Services;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para medicoDTO complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="medicoDTO">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="apellidoMat" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="apellidoPat" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="idEspecialidad" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="idMedico" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/>
 *         &lt;element name="nombreEspecialidad" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
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
@XmlType(name = "medicoDTO", propOrder = {
    "apellidoMat",
    "apellidoPat",
    "idEspecialidad",
    "idMedico",
    "nombreEspecialidad",
    "nombreMedico",
    "telefono"
})
public class MedicoDTO {

    protected String apellidoMat;
    protected String apellidoPat;
    protected int idEspecialidad;
    protected Integer idMedico;
    protected String nombreEspecialidad;
    protected String nombreMedico;
    protected String telefono;

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
     */
    public int getIdEspecialidad() {
        return idEspecialidad;
    }

    /**
     * Define el valor de la propiedad idEspecialidad.
     * 
     */
    public void setIdEspecialidad(int value) {
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
     * Obtiene el valor de la propiedad nombreEspecialidad.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNombreEspecialidad() {
        return nombreEspecialidad;
    }

    /**
     * Define el valor de la propiedad nombreEspecialidad.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNombreEspecialidad(String value) {
        this.nombreEspecialidad = value;
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
