package work.login.service;



public interface CategoryService {
    /**
     * 获取首页的5个主题
     */
    String getJsonFiveTile() throws Exception;
    String getJsonAllTile() throws Exception;

}
