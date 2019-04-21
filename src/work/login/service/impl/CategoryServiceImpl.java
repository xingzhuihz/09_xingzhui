package work.login.service.impl;

import net.sf.json.JSONArray;
import work.login.dao.CategoryDao;
import work.login.dao.impl.CategoryDaoImpl;
import work.login.domain.Category;
import work.login.service.CategoryService;
import org.junit.Test;
import java.util.List;

public class CategoryServiceImpl implements CategoryService {
    /**
     * 获取首页5个主题
     * @return
     * @throws Exception
     */
    @Override
    public String getJsonFiveTile() throws Exception {
        CategoryDao dao = new CategoryDaoImpl();
        List<Category> list = dao.fiveTitle();
        return JSONArray.fromObject(list).toString();
    }
    @Override
    public String getJsonAllTile() throws Exception {
        CategoryDao dao = new CategoryDaoImpl();
        List<Category> list = dao.AllTitle();
        return JSONArray.fromObject(list).toString();
    }
    @Test
    public void test()throws Exception {
        System.err.println(new CategoryServiceImpl().getJsonAllTile());
    }
}
