
package Services;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para listarCitasByIdMedico complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="listarCitasByIdMedico">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="idMedico" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "listarCitasByIdMedico", propOrder = {
    "idMedico"
})
public class ListarCitasByIdMedico {

    protected int idMedico;

    /**
     * Obtiene el valor de la propiedad idMedico.
     * 
     */
    public int getIdMedico() {
        return idMedico;
    }

    /**
     * Define el valor de la propiedad idMedico.
     * 
     */
    public void setIdMedico(int value) {
        this.idMedico = value;
    }

}
