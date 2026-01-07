/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

public class Automovil {
    private String fabricante;
    private String modelo;
    private String color;

    public Automovil(String fabricante, String modelo, String color) {
        this.fabricante = fabricante;
        this.modelo = modelo;
        this.color = color;
    }

    // Getters para acceder a los atributos privados
    public String getFabricante() { return fabricante; }
    public String getModelo() { return modelo; }
    public String getColor() { return color; }
}
