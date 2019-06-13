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

    @Override
    public String getJsonAllContent() throws Exception {
        FourContentDao dao = new FourContentDaoImpl();
        List<FourContent> list = dao.allContent();

        return JSONArray.fromObject(list).toString();
    }


    @Test
    public void test()throws  Exception {


        System.err.println(new FourContentServiceImpl().getContentById("1"));
    }

    public void addContent(FourContent content) throws Exception {
        FourContentDao dao = new FourContentDaoImpl();
        dao.addContent(content);
    }

    public String getContentById(String cid) throws Exception{
        FourContentDao dao = new FourContentDaoImpl();
//        return  dao.getContentById(cid);
        return JSONArray.fromObject(dao.getContentById(cid)).toString();
    }

    @Override
    public void delContent(FourContent content) throws Exception {
        FourContentDao dao = new FourContentDaoImpl();
        dao.delContent(content);
    }

    @Override
    public String getTitleJsonContent(String title) throws Exception {
        FourContentDao dao = new FourContentDaoImpl();
        List<FourContent> list = dao.titleContent(title);
        return JSONArray.fromObject(list).toString();
    }

    @Override
    public void updateContent(FourContent content) throws Exception {
        FourContentDao dao = new FourContentDaoImpl();
        dao.updateContent(content);
    }
    @Override
    public void updateNoImgContent(FourContent content) throws Exception {
        FourContentDao dao = new FourContentDaoImpl();
        dao.updateContent(content);
    }
}
