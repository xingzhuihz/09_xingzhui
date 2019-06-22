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

        }else if ("fiveTitle".equals(method)) {
            //首页5个标题
            fiveTitle(request, response);
        }else if ("allTitle".equals(method)) {
            //首页全部标题
            allTitle(request, response);
        }else if ("fourContent".equals(method)) {
            //首页4个最新内容
            fourContent(request, response);
        }else if ("allContent".equals(method)) {
            //内容
            allContent(request, response);
        }
    }

    /**
     *
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
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
    private void allContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // 输出格式
            response.setContentType("text/json;charset=utf-8");

            // 获取json字符串
            FourContentService service = new FourContentServiceImpl();

            String jsonAllContent = service.getJsonAllContent();

            // 输出结果
            response.getWriter().write(jsonAllContent);

        } catch (Exception e) {
            e.printStackTrace();
            new RuntimeException(e);
        }
    }
}
