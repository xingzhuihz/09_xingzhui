package work.login.service;

import work.login.domain.FourContent;

public interface FourContentService {

    /**
     * 获取首页4个最新内容
     */

    String getJsonFourContent() throws Exception;

    String getJsonAllContent() throws Exception;

    void addContent(FourContent content) throws Exception;

    String getContentById(String cid) throws Exception;

    void delContent(FourContent content) throws Exception;

    String getTitleJsonContent(String title) throws Exception;

    void updateContent(FourContent content) throws Exception;
}
