package work.login.servlet;

import work.login.domain.Admin;
import work.login.service.AdminService;
import work.login.service.impl.AdminServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.format.SignStyle;

@WebServlet(name = "AdminServlet", urlPatterns = "/admin")
public class AdminServlet extends HttpServlet {
    private AdminService service = new AdminServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("utf-8");


            //接受参数
            String name = request.getParameter("name");
            String pwd = request.getParameter("pwd");
            //封装对象

            Admin admin = new Admin(null, name, pwd, null);
            //查询数据库
            admin = service.login(admin);
            //判断是否成功
            if (admin == null) {
                System.out.println("登陆失败" + admin);
//                response.getWriter().print("<span style='color:red'>登陆失败</span>");
                //跳去登录页，重新登陆
                //重定向，标准路径，302，是2次请求，不能带数据
//            response.sendRedirect(request.getContextPath() + "/login.jsp");
                //请求转发，可以携带数据,路径直接写,是服务端发出的
                request.setAttribute("name", name);//放数据到request
                request.getRequestDispatcher("/jsps/index.jsp").forward(request, response);


            } else {
                System.out.println("登陆成功" + admin);
                response.getWriter().print("<span style='color:green'>登陆成功</span>");
                request.getRequestDispatcher("/jsps/index.jsp").forward(request, response);
                //跳去登陆页面
            }

        } catch (Exception e) {
            request.setAttribute("msg", "错误");
            request.getRequestDispatcher("/msg.jsp").forward(request, response);
        }

    }
}
