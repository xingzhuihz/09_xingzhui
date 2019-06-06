package work.login.service;

/**
 * Create by Administrator on 2019/6/5.
 */
public interface CategoryService {
    /**
     * 获取首页的5个主题
     */
    String getJsonFiveTile() throws Exception;
    String getJsonAllTile() throws Exception;
}
