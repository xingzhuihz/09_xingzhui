package work.login.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;
import work.login.dao.AdminDao;
import work.login.domain.Admin;
import work.login.utils.DSutils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class AdminDaoImpl implements AdminDao {

    @Override
    public Admin login(Admin admin) throws SQLException {
        QueryRunner runner = new QueryRunner(DSutils.getDataSource());
        String sql = "select * from admin where name=? and password=? limit 1";
        admin = runner.query(sql, new BeanHandler<>(Admin.class), admin.getName(), admin.getPassword());
        return admin;



//        // 获取连接
//        Connection conn = DSutils.getConnection();
//
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//        try {
//            ps = conn.prepareStatement("select * from admin where name=? and password=? limit 1");
//            // 设置参数
//            ps.setString(1, admin.getName());
//            ps.setString(2, admin.getPassword());
//            // 执行sql
//            rs = ps.executeQuery();
//            if (rs.next()) {
//                admin.setId(rs.getInt("id"));
//                admin.setLimits(rs.getInt("limits"));
//            } else {
//                admin = null;
//            }
//        } finally {
//            try {
//                rs.close();
//            } catch (SQLException e) {
//                throw new RuntimeException(e);
//            }
//            try {
//                ps.close();
//            } catch (SQLException e) {
//                throw new RuntimeException(e);
//            }
//            try {
//                conn.close();
//            } catch (SQLException e) {
//                throw new RuntimeException(e);
//            }
//        }
    }

    @Test
    public void test1() throws Exception {
        Admin admin = new Admin(0,"admin","1234",0);
        AdminDao dao = new AdminDaoImpl();
        admin = dao.login(admin);
        System.out.println(admin);
    }
}
