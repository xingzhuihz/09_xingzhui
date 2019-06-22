package work.login.dao;

import work.login.domain.User;

/**
 * Create by Administrator on 2019/6/19.
 */
public interface UserDao {
    User login(User user) throws Exception;

    User register(User user) throws Exception;

    User userInfor(User user) throws Exception;
}
