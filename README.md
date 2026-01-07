# 🗺️ Gestión de Automóviles: Comparación de Estructuras Map (JSP + Servlet)

## 📋 Descripción del Proyecto
Este proyecto es una aplicación web Java desarrollada bajo el patrón de arquitectura **MVC (Modelo-Vista-Controlador)**.

El objetivo principal es demostrar y visualizar las diferencias de comportamiento (ordenamiento) entre las tres principales implementaciones de la interfaz `Map` en Java, utilizando objetos de la clase `Automovil`:

1.  **HashMap:** Para demostrar el almacenamiento sin garantía de orden.
2.  **LinkedHashMap:** Para demostrar el orden basado en la inserción (llegada).
3.  **TreeMap:** Para demostrar el ordenamiento natural automático (por ID).

## 🚀 Tecnologías Utilizadas
* **Lenguaje:** Java (JDK 8 Compatible).
* **Servidor:** Apache Tomcat 9.
* **Frontend:** JSP (JavaServer Pages), CSS3.
* **IDE Recomendado:** NetBeans / Eclipse.

## 📂 Estructura del Proyecto (MVC)
El código se ha organizado en paquetes para respetar las buenas prácticas de programación:

### 1. Model (`src/java/model`)
* **`Automovil.java`**: Clase POJO que representa la entidad con sus atributos (`id`, `marcaModelo`) y métodos encapsulados.

### 2. Service (`src/java/service`)
* **`AutomovilService.java`**: Contiene la lógica de negocio. Simula la obtención de datos y puebla las tres estructuras (`HashMap`, `LinkedHashMap`, `TreeMap`) con los mismos objetos para evidenciar sus diferencias al ser recuperados.

### 3. Controller (`src/java/controller`)
* **`AutomovilServlet.java`**: Actúa como intermediario.
    * Recibe la petición HTTP.
    * Solicita los mapas al *Service*.
    * Pasa los datos a la *Vista* mediante atributos del `request`.
    * Redirige el flujo al JSP.

### 4. View (`web/`)
* **`ListarAutos.jsp`**: Se encarga puramente de la visualización. Recibe los mapas ya procesados por el Servlet e itera sobre ellos para mostrarlos en tarjetas diferenciadas por colores.

---

## 🧠 Análisis de Resultados (Teoría Aplicada)
Al ejecutar la aplicación, se observa el siguiente comportamiento programado:

* 🔴 **HashMap:** Los autos aparecen en un orden aparentemente aleatorio (basado en el hash de la clave), confirmando que esta estructura prioriza la velocidad sobre el orden.
* 🔵 **LinkedHashMap:** Los autos aparecen exactamente en el orden en que fueron agregados en el código (10 -> 1 -> 5 -> 20), respetando la cronología de inserción.
* 🟢 **TreeMap:** Los autos se reordenan automáticamente de menor a mayor según su ID (1, 5, 10, 20), confirmando que implementa un ordenamiento natural (`Comparable`).

## 🛠️ Instrucciones de Despliegue
1.  Clonar el repositorio.
2.  Abrir el proyecto en NetBeans o IDE de preferencia.
3.  Realizar "Clean and Build" para generar el archivo `.war`.
4.  Desplegar en Apache Tomcat.
5.  Acceder a través del Servlet: `http://localhost:8080/Prueba2/AutomovilServlet`

---
**Autor:** # 🗺️ Gestión de Automóviles: Comparación de Estructuras Map (JSP + Servlet)

## 📋 Descripción del Proyecto
Este proyecto es una aplicación web Java desarrollada bajo el patrón de arquitectura **MVC (Modelo-Vista-Controlador)**.

El objetivo principal es demostrar y visualizar las diferencias de comportamiento (ordenamiento) entre las tres principales implementaciones de la interfaz `Map` en Java, utilizando objetos de la clase `Automovil`:

1.  **HashMap:** Para demostrar el almacenamiento sin garantía de orden.
2.  **LinkedHashMap:** Para demostrar el orden basado en la inserción (llegada).
3.  **TreeMap:** Para demostrar el ordenamiento natural automático (por ID).

## 🚀 Tecnologías Utilizadas
* **Lenguaje:** Java (JDK 8 Compatible).
* **Servidor:** Apache Tomcat 9.
* **Frontend:** JSP (JavaServer Pages), CSS3.
* **IDE Recomendado:** NetBeans / Eclipse.

## 📂 Estructura del Proyecto (MVC)
El código se ha organizado en paquetes para respetar las buenas prácticas de programación:

### 1. Model (`src/java/model`)
* **`Automovil.java`**: Clase POJO que representa la entidad con sus atributos (`id`, `marcaModelo`) y métodos encapsulados.

### 2. Service (`src/java/service`)
* **`AutomovilService.java`**: Contiene la lógica de negocio. Simula la obtención de datos y puebla las tres estructuras (`HashMap`, `LinkedHashMap`, `TreeMap`) con los mismos objetos para evidenciar sus diferencias al ser recuperados.

### 3. Controller (`src/java/controller`)
* **`AutomovilServlet.java`**: Actúa como intermediario.
    * Recibe la petición HTTP.
    * Solicita los mapas al *Service*.
    * Pasa los datos a la *Vista* mediante atributos del `request`.
    * Redirige el flujo al JSP.

### 4. View (`web/`)
* **`ListarAutos.jsp`**: Se encarga puramente de la visualización. Recibe los mapas ya procesados por el Servlet e itera sobre ellos para mostrarlos en tarjetas diferenciadas por colores.

---

## 🧠 Análisis de Resultados (Teoría Aplicada)
Al ejecutar la aplicación, se observa el siguiente comportamiento programado:

* 🔴 **HashMap:** Los autos aparecen en un orden aparentemente aleatorio (basado en el hash de la clave), confirmando que esta estructura prioriza la velocidad sobre el orden.
* 🔵 **LinkedHashMap:** Los autos aparecen exactamente en el orden en que fueron agregados en el código (10 -> 1 -> 5 -> 20), respetando la cronología de inserción.
* 🟢 **TreeMap:** Los autos se reordenan automáticamente de menor a mayor según su ID (1, 5, 10, 20), confirmando que implementa un ordenamiento natural (`Comparable`).

## 🛠️ Instrucciones de Despliegue
1.  Clonar el repositorio.
2.  Abrir el proyecto en NetBeans o IDE de preferencia.
3.  Realizar "Clean and Build" para generar el archivo `.war`.
4.  Desplegar en Apache Tomcat.
5.  Acceder a través del archivo web jsp: `http://localhost:8080/Prueba2/ListarAutos.jsp`
---

**Autor:** Axel Molineros
**Asignatura:** Programación Orientada a Objetos
**Asignatura:** Programación Web
