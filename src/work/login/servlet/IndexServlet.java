package work.login.servlet;

import work.login.service.*;
import work.login.service.impl.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "IndexServlet", urlPatterns = "/index")
public class IndexServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        if (method.equals("")) {

        }else if ("sixProduct1".equals(method)) {
            //第一块6个产品的轮播图
            sixProduct1(request, response);
        }else if ("sixProduct2".equals(method)) {
            //第二块
            sixProduct2(request, response);
        }else if ("sixProduct3".equals(method)) {
            //第二块
            sixProduct3(request, response);
        }else if ("fourAdvert1".equals(method)) {
            //广告
            fourAdvert1(request, response);
        }else if ("fiveTitle".equals(method)) {
            //首页5个标题
            fiveTitle(request, response);
        }else if ("allTitle".equals(method)) {
            //首页全部标题
            allTitle(request, response);
        }else if ("fourContent".equals(method)) {
            //首页4个最新内容
            fourContent(request, response);
        }else if ("category".equals(method)) {
            //分类信息显示
            getCategory(request, response);

        }
    }

    /**
     * 第一块6个产品的轮播图
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    private void sixProduct1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // 输出格式
            response.setContentType("text/json;charset=utf-8");
            // 获取json字符串
            NativeProductService service = new NativeProductServiceImpl();

            String jsonSixProduct = service.getJsonSixProduct();

            // 输出结果
            response.getWriter().write(jsonSixProduct);

        } catch (Exception e) {
            e.printStackTrace();
            new RuntimeException(e);
        }
    }
    private void sixProduct2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // 输出格式
            response.setContentType("text/json;charset=utf-8");
            // 获取json字符串
            NativeProductService service = new NativeProductServiceImpl();

            String jsonSixProduct = service.getJsonSixProductTwo();

            // 输出结果
            response.getWriter().write(jsonSixProduct);

        } catch (Exception e) {
            e.printStackTrace();
            new RuntimeException(e);
        }
    }
    private void sixProduct3(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // 输出格式
            response.setContentType("text/json;charset=utf-8");
            // 获取json字符串
            NativeProductService service = new NativeProductServiceImpl();

            String jsonSixProduct = service.getJsonSixProductThree();

            // 输出结果
            response.getWriter().write(jsonSixProduct);

        } catch (Exception e) {
            e.printStackTrace();
            new RuntimeException(e);
        }
    }
    private void fourAdvert1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // 输出格式
            response.setContentType("text/json;charset=utf-8");
            // 获取json字符串
            AdvertService service = new AdvertServiceImpl();

            String jsonFourAdvert = ((AdvertServiceImpl) service).getJsonFourAdvert();

            // 输出结果
            response.getWriter().write(jsonFourAdvert);

        } catch (Exception e) {
            e.printStackTrace();
            new RuntimeException(e);
        }
    }
    private void fiveTitle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // 输出格式
            response.setContentType("text/json;charset=utf-8");
            // 获取json字符串
            CategoryService service = new CategoryServiceImpl();

            String jsonFiveTile = service.getJsonFiveTile();

            // 输出结果
            response.getWriter().write(jsonFiveTile);

        } catch (Exception e) {
            e.printStackTrace();
            new RuntimeException(e);
        }
    }
    private void allTitle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // 输出格式
            response.setContentType("text/json;charset=utf-8");
            // 获取json字符串
            CategoryService service = new CategoryServiceImpl();

            String jsonAllTile = service.getJsonAllTile();

            // 输出结果
            response.getWriter().write(jsonAllTile);

        } catch (Exception e) {
            e.printStackTrace();
            new RuntimeException(e);
        }
    }
    private void fourContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // 输出格式
            response.setContentType("text/json;charset=utf-8");
            // 获取json字符串
            FourContentService service = new FourContentServiceImpl();

            String jsonFourContent = service.getJsonFourContent();

            // 输出结果
            response.getWriter().write(jsonFourContent);

        } catch (Exception e) {
            e.printStackTrace();
            new RuntimeException(e);
        }
    }

    /**
     * 分类信息显示
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    private void getCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
