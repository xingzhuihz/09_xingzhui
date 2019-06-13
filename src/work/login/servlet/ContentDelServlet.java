package work.login.servlet;

import org.apache.commons.beanutils.BeanUtils;
import work.login.domain.FourContent;
import work.login.service.impl.FourContentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ContentDelServlet",urlPatterns = "/contentdel")
public class ContentDelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String method = request.getParameter("method");

        if (method == null || "".equals(method)) {
            // web页的添加: 没有参数null,或者参数值为""
            delPage(request, response);
        } else if ("delPage".equals(method)) {
            // Android 端的添加
            try {
                delPageA(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }

        }



    }

    private void delPageA(HttpServletRequest request, HttpServletResponse response) throws IOException {
        FourContent content = new FourContent();
        try {
            BeanUtils.populate(content,request.getParameterMap());

            content.setId(Integer.valueOf(request.getParameter("cid")));
            //调用service完成添加操作
            new FourContentServiceImpl().delContent(content);

            response.getWriter().print("sucess");



        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("msg", "错误");
            response.getWriter().print("fail");
        }
    }

    private void delPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FourContent content = new FourContent();
        try {
            BeanUtils.populate(content,request.getParameterMap());

            content.setId(Integer.valueOf(request.getParameter("cid")));
            //调用service完成添加操作
            new FourContentServiceImpl().delContent(content);

            //请求转发
            request.getRequestDispatcher("/index_manage.jsp").forward(request,response);


        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("msg", "错误");
            request.getRequestDispatcher("/msg.jsp").forward(request, response);
        }
    }

}

