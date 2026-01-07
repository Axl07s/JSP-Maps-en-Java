<%-- 
    Document   : ListarAutos
    Created on : 6 ene 2026, 8:13:10 p. m.
    Author     : AXEL
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<%@ page import="model.Automovil" %>

<!DOCTYPE html>
<html>
<head>
    <title>Gamer Garage - Mapas</title>
    <style>
        /* Estilo General Gamer */
        body {
            background-color: #0d0d15; /* Fondo casi negro */
            color: #e0e0e0;
            font-family: 'Courier New', Courier, monospace; /* Fuente tipo consola */
            text-align: center;
            margin: 0;
            padding: 20px;
        }

        h1 {
            color: #00ff9d; /* Verde Neón */
            text-shadow: 0 0 10px #00ff9d;
            text-transform: uppercase;
            letter-spacing: 3px;
            margin-bottom: 40px;
            border-bottom: 2px solid #00ff9d;
            display: inline-block;
            padding-bottom: 10px;
        }

        h3 {
            color: #bd00ff; /* Violeta Neón */
            text-shadow: 0 0 5px #bd00ff;
            text-transform: uppercase;
            margin-top: 0;
        }

        /* Contenedor de las cajas */
        .container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
        }

        /* Tarjetas para cada Map */
        .map-card {
            background-color: #1a1a24;
            border: 2px solid #bd00ff;
            border-radius: 10px;
            width: 300px;
            padding: 20px;
            box-shadow: 0 0 15px rgba(189, 0, 255, 0.2); /* Resplandor */
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .map-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 0 25px rgba(189, 0, 255, 0.6); /* Resplandor más fuerte */
            border-color: #00ff9d;
        }

        /* Estilo de los items de la lista */
        p.auto-item {
            background-color: #000;
            border-left: 4px solid #00ff9d;
            padding: 10px;
            margin: 10px 0;
            text-align: left;
            font-size: 14px;
        }
        
        .tag {
            font-weight: bold;
            color: #00ff9d;
        }
    </style>
</head>
<body>

    <h1>Sistema de Mapas: [ON]</h1>

    <div class="container">
        <div class="map-card">
            <h3>HashMap</h3>
            <small style="color: gray;">(Sin orden garantizado)</small>
            <hr style="border-color: #333;">
            <%
                Map<String, Automovil> hash = (Map<String, Automovil>) request.getAttribute("hashMap");
                if (hash != null) {
                    for (Automovil a : hash.values()) {
            %>
                <p class="auto-item">
                    <span class="tag">>></span> 
                    <%= a.getFabricante() %> <%= a.getModelo() %> 
                    <span style="color: #ff0055;">[<%= a.getColor() %>]</span>
                </p>
            <%
                    }
                } else {
                    out.println("<p style='color:red'>ERROR: No data loaded</p>");
                }
            %>
        </div>

        <div class="map-card">
            <h3>LinkedHashMap</h3>
            <small style="color: gray;">(Orden de llegada)</small>
            <hr style="border-color: #333;">
            <%
                Map<String, Automovil> linked = (Map<String, Automovil>) request.getAttribute("linkedHashMap");
                if (linked != null) {
                    for (Automovil a : linked.values()) {
            %>
                <p class="auto-item">
                    <span class="tag">>></span> 
                    <%= a.getFabricante() %> <%= a.getModelo() %> 
                    <span style="color: #ff0055;">[<%= a.getColor() %>]</span>
                </p>
            <%
                    }
                }
            %>
        </div>

        <div class="map-card">
            <h3>TreeMap</h3>
            <small style="color: gray;">(Orden Alfabético)</small>
            <hr style="border-color: #333;">
            <%
                Map<String, Automovil> tree = (Map<String, Automovil>) request.getAttribute("treeMap");
                if (tree != null) {
                    for (Automovil a : tree.values()) {
            %>
                <p class="auto-item">
                    <span class="tag">>></span> 
                    <%= a.getFabricante() %> <%= a.getModelo() %> 
                    <span style="color: #ff0055;">[<%= a.getColor() %>]</span>
                </p>
            <%
                    }
                }
            %>
        </div>
    </div>

</body>
</html>