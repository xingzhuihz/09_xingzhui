package work.login.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;
import work.login.dao.FourContentDao;
import work.login.domain.FourContent;
import work.login.utils.DSutils;

import java.sql.SQLException;
import java.util.List;

public class FourContentDaoImpl implements FourContentDao {
    @Override
    public List<FourContent> fourContent() throws SQLException {
        String sql="SELECT id,h1,span,img,p,uploadtime,a FROM index_content ORDER BY uploadtime DESC LIMIT 0,4;";
        QueryRunner runner = new QueryRunner(DSutils.getDataSource());
        return  runner.query(sql, new BeanListHandler<>(FourContent.class));
    }
    @Test
    public void test1() throws SQLException {
        FourContentDao dao = new FourContentDaoImpl();
        System.err.println( dao.fourContent());


    }
}
