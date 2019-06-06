package work.login.servlet;

import work.login.domain.FourContent;
import work.login.service.FourContentService;
import work.login.service.impl.FourContentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ContentQueryServlet", urlPatterns = "/contentquery")
public class ContentQueryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");


        // 调用service 通过id获取内容 返回content
        FourContent content = null;
        if (request.getParameter("cid").equals("")) {
            //如果是title
            String title = request.getParameter("title");
            titleContent(request, response, title);
        } else {
            // 获取内容id
            String cid = request.getParameter("cid");
            cidContent(request,response,cid);
//            try {
//                content = new FourContentServiceImpl().getContentById(cid);
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//            将content 放入request域中，请求转发
//            request.setAttribute("c_id", content);
//
//            request.getRequestDispatcher("/index_manage.jsp").forward(request, response);
        }


        // session 域
//            request.getSession().setAttribute("content", content);


//             将content 放入request域中，请求转发
//            request.setAttribute("c_id", content);
//
//            request.getRequestDispatcher("/index_manage.jsp").forward(request, response);
    }


    private void titleContent(HttpServletRequest request, HttpServletResponse response, String title) throws ServletException, IOException {
        try {
            // 输出格式
            response.setContentType("text/json;charset=utf-8");

            // 获取json字符串
            FourContentService service = new FourContentServiceImpl();

            String jsonTitleContent = service.getTitleJsonContent(title);

            // 输出结果
            response.getWriter().write(jsonTitleContent);

        } catch (Exception e) {
            e.printStackTrace();
            new RuntimeException(e);
        }
    }

    private void cidContent(HttpServletRequest request, HttpServletResponse response, String cid) throws ServletException, IOException {

        try {
            // 输出格式
            response.setContentType("text/json;charset=utf-8");

            // 获取json字符串
            FourContentService service = new FourContentServiceImpl();

            String jsonCidContent = service.getContentById(cid);

            // 输出结果
            response.getWriter().write(jsonCidContent);

        } catch (Exception e) {
            e.printStackTrace();
            new RuntimeException(e);
        }
    }

}
