package work.login.service.impl;

import net.sf.json.JSONArray;
import org.junit.Test;
import work.login.dao.AdvertDao;
import work.login.dao.impl.AdvertDaoImpl;
import work.login.domain.Advert;
import work.login.service.AdvertService;

import java.util.List;

public class AdvertServiceImpl implements AdvertService {
    @Override
    public String getJsonFourAdvert() throws Exception {
        AdvertDao dao = new AdvertDaoImpl();
        List<Advert> list = dao.fourAdvert();
        return JSONArray.fromObject(list).toString();
    }

    @Test
    public void test()throws  Exception {
        System.err.println(new AdvertServiceImpl().getJsonFourAdvert());
    }
}
