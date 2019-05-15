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

