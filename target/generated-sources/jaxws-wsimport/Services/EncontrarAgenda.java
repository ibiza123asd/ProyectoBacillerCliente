
package Services;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para encontrarAgenda complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="encontrarAgenda">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="idAgenda" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "encontrarAgenda", propOrder = {
    "idAgenda"
})
public class EncontrarAgenda {

    protected int idAgenda;

    /**
     * Obtiene el valor de la propiedad idAgenda.
     * 
     */
    public int getIdAgenda() {
        return idAgenda;
    }

    /**
     * Define el valor de la propiedad idAgenda.
     * 
     */
    public void setIdAgenda(int value) {
        this.idAgenda = value;
    }

}
