package work.login.dao;

import work.login.domain.NativeProduct;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public interface NativeProductDao {
    // 6项数据
    List<NativeProduct> findSixProduct() throws SQLException;

    List<NativeProduct> findSixProductTwo() throws SQLException;

    List<NativeProduct> findSixProductThree() throws SQLException;
}
