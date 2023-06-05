
package Services;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para registrarCita complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="registrarCita">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="cita" type="{http://Servicios/}cita" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "registrarCita", propOrder = {
    "cita"
})
public class RegistrarCita {

    protected Cita cita;

    /**
     * Obtiene el valor de la propiedad cita.
     * 
     * @return
     *     possible object is
     *     {@link Cita }
     *     
     */
    public Cita getCita() {
        return cita;
    }

    /**
     * Define el valor de la propiedad cita.
     * 
     * @param value
     *     allowed object is
     *     {@link Cita }
     *     
     */
    public void setCita(Cita value) {
        this.cita = value;
    }

}
