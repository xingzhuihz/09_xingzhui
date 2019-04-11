package work.login.utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.junit.Test;

import javax.sql.DataSource;
import java.sql.*;

public class DSutils {
    public static DataSource ds;

    static {
        ds = new ComboPooledDataSource();
    }



    public static DataSource getDataSource(){
        return ds;
    }

    public static Connection getConnection() {
        Connection conn;
        try {
            conn = ds.getConnection();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return conn;
    }

    @Test
    public void test() throws Exception {


        System.out.println(DSutils.getConnection());




//        Connection connection = null;

//        Class.forName("com.mysql.jdbc.Driver");

//        String url = "jdbc:mysql://localhost:3306/sql_hz?userUnicode=true&characterEncoding=UTF8&serverTimezone=UTC";
//
//        String user = "root";
//
//        String password = "159753";
//        //获取连接
//        connection = DriverManager.getConnection(url, user, password);
//
//        String sql = "select * from sql_hz where user = ? and pawssord = ?";
//        PreparedStatement preparedStatement = connection.prepareStatement(sql);
//        preparedStatement.setString(1, user);
//        preparedStatement.setString(2, password);
//
//        System.out.println(connection);
    }
}
