
package Services;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para encontrarEspecialidad complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="encontrarEspecialidad">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="idEspecialidad" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "encontrarEspecialidad", propOrder = {
    "idEspecialidad"
})
public class EncontrarEspecialidad {

    protected int idEspecialidad;

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

}
