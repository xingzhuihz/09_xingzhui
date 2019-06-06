package work.login.service.impl;

import work.login.dao.AdminDao;
import work.login.dao.impl.AdminDaoImpl;
import work.login.domain.Admin;
import work.login.service.AdminService;
import work.login.utils.PasswordUtils;
import org.junit.Test;


public class AdminServiceImpl implements AdminService {
    private AdminDao dao = new AdminDaoImpl();

    public Admin login(Admin admin) throws Exception {
        String pwd = PasswordUtils.md5(admin.getPassword(), admin.getName());

        admin.setPassword(pwd);
        return dao.login(admin);
    }

    @Test
    public void test1() throws Exception {

        AdminService service = new AdminServiceImpl();

        Admin admin = new Admin();
        admin.setName("admin");
        admin.setPassword("1234");

        System.out.println(service.login(admin));
    }
}
