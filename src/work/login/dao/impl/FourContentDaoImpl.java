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
        String sql="SELECT id,h1,span,img,p,uploadtime,a FROM index_content ORDER BY uploadtime DESC;";
        QueryRunner runner = new QueryRunner(DSutils.getDataSource());
        return  runner.query(sql, new BeanListHandler<>(FourContent.class));
    }

    @Override
    public List<FourContent> allContent() throws SQLException {
        String sql="SELECT id,h1,span,img,p,uploadtime,a FROM index_content;";
        QueryRunner runner = new QueryRunner(DSutils.getDataSource());
        return  runner.query(sql, new BeanListHandler<>(FourContent.class));
    }

    @Override
    public void addConetn(FourContent content) throws SQLException {
        QueryRunner runner = new QueryRunner(DSutils.getDataSource());
        String sql = "insert into index_content (h1,span,img,p,uploadtime,a) values (?,?,?,?,?,?);";
        runner.update(sql,  content.getH1(), content.getSpan(),
                content.getImg(), content.getP(), content.getUploadtime(),
                content.getA());
    }


    @Test
    public void test1() throws SQLException {
        FourContentDao dao = new FourContentDaoImpl();
        System.err.println( dao.allContent());


    }
}
