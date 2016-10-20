package dao.imp;

import dao.DaoMenu;
import db.sql.ConectaDb;
import java.sql.*;
import java.util.*;

public class DaoMenuImpl implements DaoMenu{

    private final ConectaDb db;
    public DaoMenuImpl() {
        this.db=new ConectaDb();
    }

    @Override
    public List<Object[]> Menu(Integer rol) {
        List<Object[]> list=null;
        String sql = "CALL sp_permisos("+rol+")";
        
        try(Connection cn=db.getConnection();
                PreparedStatement ps=cn.prepareStatement(sql);
                ResultSet rs=ps.executeQuery();) {
            list=new LinkedList<>();//mucho mas liviano que el ArrayList
            while(rs.next())
            {
                Object[] fil=new Object[1];
                fil[0]=rs.getString(1);
                list.add(fil);
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
                    
        }
        
        return list;
    }
    
}
