package work.login.dao;

import work.login.domain.Category;

import java.sql.SQLException;
import java.util.List;

public interface CategoryDao {
    List<Category> fiveTitle() throws SQLException;
    List<Category> AllTitle() throws SQLException;
}
