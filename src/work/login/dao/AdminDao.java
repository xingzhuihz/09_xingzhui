package work.login.dao;

import work.login.domain.Admin;

public interface AdminDao {
    public Admin login(Admin admin) throws Exception;
}