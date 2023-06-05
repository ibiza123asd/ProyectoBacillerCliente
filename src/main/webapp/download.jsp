<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.net.URLDecoder" %>
<%@ page import="java.io.OutputStream" %>
<%
    // Obtener el nombre del archivo a descargar
    String filename = "ticket.pdf";
    
    // Obtener el directorio temporal del servidor
    String tempDir = System.getProperty("java.io.tmpdir");
    
    // Crear un archivo con el contenido del ticket
    File file = new File(tempDir, filename);
    
    // Obtener el arreglo de bytes del archivo
    byte[] bytes = new byte[(int) file.length()];
    FileInputStream fis = new FileInputStream(file);
    fis.read(bytes);
    fis.close();
    
    // Configurar la respuesta HTTP
    response.setContentType("application/pdf");
    response.setHeader("Content-Disposition", "attachment;filename=" + filename);
    
    // Escribir el archivo en el flujo de salida de la respuesta HTTP
    OutputStream outa = response.getOutputStream();
    outa.write(bytes);
    outa.flush();
    outa.close();
%>