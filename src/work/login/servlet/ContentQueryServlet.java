package work.login.servlet;

import work.login.domain.FourContent;
import work.login.service.impl.FourContentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ContentQueryServlet",urlPatterns = "/contentquery")
public class ContentQueryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 获取内容id
        String cid = request.getParameter("cid");


        // 调用service 通过id获取内容 返回content
        FourContent content = null;
        try {
            content = new FourContentServiceImpl().getContentById(cid);
        } catch (Exception e) {
            e.printStackTrace();
        }

        // 将content 放入request域中，请求转发
        request.setAttribute("c_id", content);

        request.getRequestDispatcher("/index_manage.jsp").forward(request, response);

    }
}
