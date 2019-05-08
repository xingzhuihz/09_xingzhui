package work.login.service;

import work.login.domain.FourContent;

import java.sql.SQLException;
import java.util.List;

public interface FourContentService {

    /**
     * 获取首页4个最新内容
     */

    String getJsonFourContent() throws Exception;

    String getJsonAllContent() throws Exception;

    void addContent(FourContent content) throws Exception;
}
