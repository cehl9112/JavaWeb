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
        String sql = "select id_usuario, id_rol from tbl_usuario where usuario="+user+" AND contrasena="+pass;
        
        try(Connection cn=db.getConnection();
                PreparedStatement ps=cn.prepareStatement(sql);
                ResultSet rs=ps.executeQuery();) {
            list=new LinkedList<>();//mucho mas liviano que el ArrayList
            while(rs.next())
            {
                Object[] fil=new Object[2];
                fil[0]=rs.getInt(1);
                fil[1]=rs.getInt(2);
                list.add(fil);
            }
        } catch (SQLException e) {
        }
        
        return list;
    }
    
}
