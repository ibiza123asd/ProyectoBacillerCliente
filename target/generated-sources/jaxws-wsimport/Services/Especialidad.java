
package Services;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para especialidad complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="especialidad">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="idEspecialidad" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/>
 *         &lt;element name="nombreEspecialidad" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "especialidad", propOrder = {
    "idEspecialidad",
    "nombreEspecialidad"
})
public class Especialidad {

    protected Integer idEspecialidad;
    protected String nombreEspecialidad;

    /**
     * Obtiene el valor de la propiedad idEspecialidad.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getIdEspecialidad() {
        return idEspecialidad;
    }

    /**
     * Define el valor de la propiedad idEspecialidad.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setIdEspecialidad(Integer value) {
        this.idEspecialidad = value;
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

}
