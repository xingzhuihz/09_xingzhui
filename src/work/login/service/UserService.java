package work.login.service;

import work.login.domain.User;

/**
 * Create by Administrator on 2019/6/19.
 */
public interface UserService {
    User login(User user) throws Exception;

    User register(User user) throws Exception;

    User userInfor(User user) throws Exception;
}
