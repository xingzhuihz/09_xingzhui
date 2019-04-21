package work.login.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;
import work.login.dao.AdvertDao;
import work.login.domain.Advert;
import work.login.utils.DSutils;

import java.sql.SQLException;
import java.util.List;

public class AdvertDaoImpl implements AdvertDao {
    @Override
    public List<Advert> fourAdvert() throws SQLException {
        String sql="SELECT id,name,img FROM native_product_advert ORDER BY id DESC LIMIT 1,4;";
        QueryRunner runner = new QueryRunner(DSutils.getDataSource());
//        return  runner.query(sql, new BeanListHandler<NativeProduct>(NativeProduct.class));
        return runner.query(sql, new BeanListHandler<>(Advert.class));
    }
    @Test
    public void test1() throws SQLException {
        AdvertDao dao = new AdvertDaoImpl();
        System.err.println( dao.fourAdvert());


    }
}
