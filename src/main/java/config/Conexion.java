/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author braya
 */
public class Conexion {
    
    private static String database="bd_carrito";
    private static String username="root";
    private static String password="";
    private static String url="jdbc:mysql://localhost:3306/"+database;
    
    public static Connection getConnection (){
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn=DriverManager.getConnection(url, username, password);
            System.out.println("Conexion establecida");
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("Conexion no establecida");
        }
        return conn;
    }
}