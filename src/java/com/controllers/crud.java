/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controllers;

import java.sql.*;
import com.data.conexion;

/**
 *
 * @author Charlie
 */
public class crud {

    conexion db = new conexion();
    String sql;
    Connection con;
    PreparedStatement pst;
    ResultSet rs;

    //obtenemos los datos general de la tabla seleccionada
    public ResultSet getALLPersons() {
        sql = "SELECT p.id,p.nombre,p.email,p.fecha FROM persona p ";
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUsuario(), db.getContraseña());
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            return rs;
        } catch (SQLException | ClassNotFoundException e) {
            return rs;
        }
    }

    //agregar datos nuevos a la tabla seleccionada
    public void addPersons(String name, String email) {
        sql = "INSERT INTO persona(nombre,email) VALUES('" + name + "','" + email + "')";
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUsuario(), db.getContraseña());
            pst = con.prepareStatement(sql);
            pst.executeUpdate();
            con.close();
            pst.close();
        } catch (SQLException | ClassNotFoundException e) {
        }
    }

    //eliminar datos de la tabla seleccionada
    public void deletePersons(int id) {
        sql = "DELETE FROM persona WHERE id=" + id;
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUsuario(), db.getContraseña());
            pst = con.prepareStatement(sql);
            pst.executeUpdate();
            con.close();
            pst.close();
        } catch (SQLException | ClassNotFoundException e) {
        }
    }

    //obtener infromacion del dato seleccionado de la tabla
    public ResultSet getPersons(int id) {
        sql = "SELECT p.id, p.nombre,p.email FROM persona p WHERE id=" + id;
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUsuario(), db.getContraseña());
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            return rs;
        } catch (SQLException | ClassNotFoundException e) {
            return rs;
        }
    }

    //actualizar los datos de la tabla seleccionada
    public void updatePersons(int id, String name, String email) {
        sql = "UPDATE persona SET nombre='"+name+"',email='"+email+"' WHERE id="+id;
        try {
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(db.getUrl(), db.getUsuario(), db.getContraseña());
            pst = con.prepareStatement(sql);
            pst.executeUpdate();
            con.close();
            pst.close();
        } catch (SQLException | ClassNotFoundException e) {
        }
    }
}
