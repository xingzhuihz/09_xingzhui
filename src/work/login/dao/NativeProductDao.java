package work.login.dao;

import work.login.domain.NativeProduct;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public interface NativeProductDao {
    // 6项数据
    public List<NativeProduct> findSixProduct() throws SQLException;
}
