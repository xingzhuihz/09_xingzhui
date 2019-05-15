package work.login.dao;

import work.login.domain.FourContent;

import java.sql.SQLException;
import java.util.List;

public interface FourContentDao {
    List<FourContent> fourContent() throws SQLException;
    List<FourContent> allContent() throws SQLException;

    void addContent(FourContent content) throws SQLException;

    FourContent getContentById(String cid) throws SQLException;

    void delContent(FourContent content) throws  SQLException;

}
