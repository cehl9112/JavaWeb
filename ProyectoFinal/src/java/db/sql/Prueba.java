package db.sql;

import java.sql.Connection;
import java.sql.SQLException;

public class Prueba {

    public static void main(String[] args) {
        ConectaDb db = new ConectaDb();
        try(Connection cn = db.getConnection()) {
            
            System.out.println(":)");
            
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
    }
}