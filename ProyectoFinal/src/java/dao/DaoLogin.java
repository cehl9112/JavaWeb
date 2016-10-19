package dao;

import java.util.List;

public interface DaoLogin {
    public List<Object[]> Login(String user, String pass);
}
