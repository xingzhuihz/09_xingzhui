package work.login.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;
import work.login.dao.CategoryDao;
import work.login.dao.NativeProductDao;
import work.login.domain.Category;
import work.login.domain.NativeProduct;
import work.login.utils.DSutils;

import java.sql.SQLException;
import java.util.List;

public class CategoryDaoImpl implements CategoryDao {
    public List<Category> findTitle() throws SQLException {
        String sql="SELECT id,title FROM category;";
        QueryRunner runner = new QueryRunner(DSutils.getDataSource());
        return  runner.query(sql, new BeanListHandler<Category>(Category.class));
    }
    @Test
    public void test1() throws SQLException {
        CategoryDao dao = new CategoryDaoImpl();
        System.err.println(((CategoryDaoImpl) dao).findTitle());


    }
}
