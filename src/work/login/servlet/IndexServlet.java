package work.login.servlet;

import work.login.service.NativeProductService;
import work.login.service.impl.NativeProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "IndexServlet",urlPatterns = "/index")
public class IndexServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        if (method.equals("")) {

        } else if ("sixProduct1".equals(method)) {
            //第一块6个产品的轮播图
            sinProduct1(request, response);

        } else if ("category".equals(method)) {
            //分类信息显示
            getCategory(request, response);

        }
    }

    /**
     * 第一块6个产品的轮播图
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    private void sinProduct1(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
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

    /**
     * 分类信息显示
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    private void getCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {

    }
}
