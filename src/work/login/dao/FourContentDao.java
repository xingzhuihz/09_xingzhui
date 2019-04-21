package work.login.dao;

import work.login.domain.FourContent;

import java.sql.SQLException;
import java.util.List;

public interface FourContentDao {
    List<FourContent> fourContent() throws SQLException;

}
