package work.login.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.junit.Test;
import work.login.dao.UserDao;
import work.login.domain.User;
import work.login.utils.DSutils;
import work.login.utils.PasswordUtils;

/**
 * Create by Administrator on 2019/6/19.
 */
public class UserDaoImpl implements UserDao {
    @Override
    public User login(User user) throws Exception {
        QueryRunner runner = new QueryRunner(DSutils.getDataSource());
        String sql = "select * from user_infor where name = ? and password= ? limit 1";
        user = runner.query(sql, new BeanHandler<>(User.class), user.getName(), user.getPassword());
        return user;
    }

    @Override
    public User register(User user) throws Exception {
        QueryRunner runner = new QueryRunner(DSutils.getDataSource());
        String sql = "insert into user_infor (NAME,PASSWORD,img,phoneNumber) values (?,?,?,?)";
        String pwd = PasswordUtils.md5(user.getPassword(), user.getName());
        user.setPassword(pwd);
        runner.update(sql, user.getName(), user.getPassword(), user.getImg(), user.getPhoneNumber());
        return user;
    }

    @Override
    public User userInfor(User user) throws Exception {
        QueryRunner runner = new QueryRunner(DSutils.getDataSource());
        String sql = "select NAME,PASSWORD,img,phoneNumber from user_infor where id = ? ";
        user = runner.query(sql, new BeanHandler<>(User.class), user.getId());
        return user;
    }

    @Test
    public void test()throws Exception {
//        User user = new User(0, "hyj", "12345", 2, "images/tx/yx03.jpg", "10086");
//        UserDao dao = new UserDaoImpl();
//        dao.register(user);
//
//        User user = new User();
//        user.setName("hyj");
//        user.setPassword("1235");
//        UserDao dao = new UserDaoImpl();
//        System.out.println(dao.login(user));
        User user = new User();
        user.setId(4);
        UserDao dao = new UserDaoImpl();
        System.out.println(dao.userInfor(user));
    }
}
