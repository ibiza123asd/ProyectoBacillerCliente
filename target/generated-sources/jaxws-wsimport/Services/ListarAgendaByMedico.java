
package Services;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para listarAgendaByMedico complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="listarAgendaByMedico">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="codMedico" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "listarAgendaByMedico", propOrder = {
    "codMedico"
})
public class ListarAgendaByMedico {

    protected int codMedico;

    /**
     * Obtiene el valor de la propiedad codMedico.
     * 
     */
    public int getCodMedico() {
        return codMedico;
    }

    /**
     * Define el valor de la propiedad codMedico.
     * 
     */
    public void setCodMedico(int value) {
        this.codMedico = value;
    }

}
