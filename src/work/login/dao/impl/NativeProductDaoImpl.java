package work.login.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;
import work.login.dao.NativeProductDao;
import work.login.domain.NativeProduct;
import work.login.utils.DSutils;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.junit.Test;
public class NativeProductDaoImpl implements NativeProductDao {
    /**
     * 用于首页的6项产品
     * @return
     * @throws SQLException
     */
    public List<NativeProduct> findSixProduct() throws SQLException {
        String sql="SELECT id,name,img FROM native_product_info ORDER BY onlinetime DESC LIMIT 0,6;";
        QueryRunner runner = new QueryRunner(DSutils.getDataSource());
//        return  runner.query(sql, new BeanListHandler<NativeProduct>(NativeProduct.class));
        return runner.query(sql, new BeanListHandler<>(NativeProduct.class));
    }

    @Override
    public List<NativeProduct> findSixProductTwo() throws SQLException {
        String sql="SELECT id,name,img FROM native_product_info ORDER BY onlinetime DESC LIMIT 7,12;";
        QueryRunner runner = new QueryRunner(DSutils.getDataSource());
        return runner.query(sql, new BeanListHandler<>(NativeProduct.class));
    }

    @Override
    public List<NativeProduct> findSixProductThree() throws SQLException {
        String sql="SELECT id,name,img FROM native_product_info ORDER BY onlinetime DESC LIMIT 13,18;";
        QueryRunner runner = new QueryRunner(DSutils.getDataSource());
        return runner.query(sql, new BeanListHandler<>(NativeProduct.class));
    }

    @Test
    public void test1() throws SQLException {
        NativeProductDao dao = new NativeProductDaoImpl();
        System.err.println( dao.findSixProductTwo());


    }
}
