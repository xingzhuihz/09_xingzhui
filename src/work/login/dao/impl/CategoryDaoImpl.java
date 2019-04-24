package work.login.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;
import work.login.dao.CategoryDao;
import work.login.domain.Category;
import work.login.utils.DSutils;

import java.sql.SQLException;
import java.util.List;

public class CategoryDaoImpl implements CategoryDao {
    public List<Category> fiveTitle() throws SQLException {
        String sql="SELECT id,title,a FROM category ORDER BY id ASC LIMIT 0,5;";
        QueryRunner runner = new QueryRunner(DSutils.getDataSource());
        return  runner.query(sql, new BeanListHandler<>(Category.class));
    }
    public List<Category> AllTitle() throws SQLException {
        String sql="SELECT id,title,a FROM category;";
        QueryRunner runner = new QueryRunner(DSutils.getDataSource());
        return  runner.query(sql, new BeanListHandler<>(Category.class));
    }
    @Test
    public void test1() throws SQLException {
        CategoryDao dao = new CategoryDaoImpl();
        System.err.println(dao.fiveTitle());


    }
}
