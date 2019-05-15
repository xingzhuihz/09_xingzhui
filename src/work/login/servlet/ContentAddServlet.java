package work.login.servlet;

import org.apache.commons.beanutils.BeanUtils;
import work.login.domain.FourContent;
import work.login.service.FourContentService;
import work.login.service.impl.FourContentServiceImpl;
import work.login.utils.UUIDUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.UUID;

@WebServlet(name = "ContentAddServlet",urlPatterns = "/contentadd")
public class ContentAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        // 获取session中令牌和提交过来的令牌
        String s_lingpai = request.getParameter("code_lingpai");
        String session_lingpai = (String) request.getSession().getAttribute("s_lingpai");



        // 移除session中的令牌
        request.getSession().removeAttribute("s_lingpai");




        // 比较两个令牌
        if (s_lingpai.equals("") || !s_lingpai.equals(session_lingpai)) {
            request.setAttribute("msg", "重复提交");
            request.getRequestDispatcher("/index_manage.jsp").forward(request, response);
            return;
        }

        FourContent content = new FourContent();
        try {
            BeanUtils.populate(content,request.getParameterMap());
//            content.setId(UUIDUtils.UUIDGetId());
            content.setH1(request.getParameter("ctitle"));
            content.setImg(request.getParameter("cimg"));
            content.setP(request.getParameter("ccontent"));
            content.setUploadtime(request.getParameter("cuploadtime"));
            content.setSpan(request.getParameter("cauthor"));
            content.setA("xtwh.jsp");
            //调用service完成添加操作
            new FourContentServiceImpl().addContent(content);

            //请求转发
            request.getRequestDispatcher("/index_manage.jsp").forward(request,response);


        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("msg", "错误");
            request.getRequestDispatcher("/msg.jsp").forward(request, response);
        }

    }

}
