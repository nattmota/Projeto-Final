package conexao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
    private static final String url = "jdbc:mysql://localhost:3306/banco_komunhao?useSSL=false";
    private static final String usuario = "root";
    private static final String senha = "root";
    private static final String driver = "com.mysql.cj.jdbc.Driver";
    
    public static Connection conectar() {
        Connection conn = null;
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url,usuario,senha);
        }catch(Exception e) {
            e.printStackTrace();
        }     
        return conn;
    }
}
