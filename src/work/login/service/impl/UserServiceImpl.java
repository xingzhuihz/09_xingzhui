package work.login.service.impl;

import org.junit.Test;
import work.login.dao.UserDao;
import work.login.dao.impl.UserDaoImpl;
import work.login.domain.User;
import work.login.service.UserService;
import work.login.utils.PasswordUtils;

/**
 * Create by Administrator on 2019/6/19.
 */
public class UserServiceImpl implements UserService {
    private UserDao dao = new UserDaoImpl();

    @Override
    public User login(User user) throws Exception {
        String pwd = PasswordUtils.md5(user.getPassword(), user.getName());
        user.setPassword(pwd);

        return dao.login(user);
    }

    @Override
    public User register(User user) throws Exception {
        UserDao dao = new UserDaoImpl();
        return dao.register(user);

    }

    @Override
    public User userInfor(User user) throws Exception {
        UserDao dao = new UserDaoImpl();
        return dao.userInfor(user);
    }

    @Test
    public void test() throws Exception {
        UserService service = new UserServiceImpl();

        User user = new User();
        user.setName("ryh");
        user.setPassword("4321");
        System.out.println(service.login(user));
    }
}
