package work.login.service.impl;


import net.sf.json.JSONArray;
import org.junit.Test;
import work.login.dao.NativeProductDao;
import work.login.dao.impl.NativeProductDaoImpl;
import work.login.domain.NativeProduct;
import work.login.service.NativeProductService;

import java.util.List;

public class NativeProductServiceImpl implements NativeProductService {
    /**
     * 获取首页的6个产品json数据
     * @return
     * @throws Exception
     */
    @Override
    public String getJsonSixProduct() throws Exception {
        NativeProductDao dao = new NativeProductDaoImpl();
        List<NativeProduct> list = dao.findSixProduct();

        return JSONArray.fromObject(list).toString();
    }

    @Override
    public String getJsonSixProductTwo() throws Exception {
        NativeProductDao dao = new NativeProductDaoImpl();
        List<NativeProduct> list = dao.findSixProductTwo();
        return JSONArray.fromObject(list).toString();
    }
    @Override
    public String getJsonSixProductThree() throws Exception {
        NativeProductDao dao = new NativeProductDaoImpl();
        List<NativeProduct> list = dao.findSixProductThree();
        return JSONArray.fromObject(list).toString();
    }

    @Test
    public void test()throws  Exception {
        System.err.println(new NativeProductServiceImpl().getJsonSixProductTwo());
    }
}
