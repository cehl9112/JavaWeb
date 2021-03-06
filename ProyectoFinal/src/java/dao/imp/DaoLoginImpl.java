package dao.imp;

import dao.DaoLogin;
import java.sql.*;
import java.util.*;
import db.sql.ConectaDb;

public class DaoLoginImpl implements DaoLogin{

    private final ConectaDb db;

    public DaoLoginImpl() {
        this.db=new ConectaDb();
    }
    
    @Override
    public List<Object[]> Login(String user, String pass) {
        List<Object[]> list=null;
        String sql = "SELECT id_usuario, id_rol, CONCAT(nombres,' ', ap_paterno) AS nombre FROM tbl_usuario where usuario='"+user+"' AND contrasena='"+pass+"'";
        
        try(Connection cn=db.getConnection();
                PreparedStatement ps=cn.prepareStatement(sql);
                ResultSet rs=ps.executeQuery();) {
            list=new LinkedList<>();//mucho mas liviano que el ArrayList
            while(rs.next())
            {
                Object[] fil=new Object[3];
                fil[0]=rs.getInt(1);
                fil[1]=rs.getInt(2);
                fil[2]=rs.getString(3);
                list.add(fil);
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
                    
        }
        
        return list;
    }
    
}
