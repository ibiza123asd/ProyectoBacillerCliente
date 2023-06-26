
package Services;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para listarCitasByIdPaciente complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="listarCitasByIdPaciente">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="idPaciente" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "listarCitasByIdPaciente", propOrder = {
    "idPaciente"
})
public class ListarCitasByIdPaciente {

    protected int idPaciente;

    /**
     * Obtiene el valor de la propiedad idPaciente.
     * 
     */
    public int getIdPaciente() {
        return idPaciente;
    }

    /**
     * Define el valor de la propiedad idPaciente.
     * 
     */
    public void setIdPaciente(int value) {
        this.idPaciente = value;
    }

}
