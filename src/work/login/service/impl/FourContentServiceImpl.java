package work.login.service.impl;

import net.sf.json.JSONArray;
import org.junit.Test;
import work.login.dao.FourContentDao;
import work.login.dao.impl.FourContentDaoImpl;
import work.login.domain.FourContent;
import work.login.service.FourContentService;

import java.util.List;

public class FourContentServiceImpl implements FourContentService {

    /**
     * 获得首页4个最新内容
     * @return
     * @throws Exception
     */
    @Override
    public String getJsonFourContent() throws Exception {
        FourContentDao dao = new FourContentDaoImpl();
        List<FourContent> list = dao.fourContent();

        return JSONArray.fromObject(list).toString();
    }

    @Test
    public void test()throws  Exception {
        System.err.println(new FourContentServiceImpl().getJsonFourContent());
    }
}
