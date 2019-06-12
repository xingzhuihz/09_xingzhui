package work.login.servlet;

import org.apache.commons.beanutils.BeanUtils;
import work.login.domain.Admin;
import work.login.service.AdminService;
import work.login.service.FourContentService;
import work.login.service.impl.AdminServiceImpl;
import work.login.service.impl.FourContentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.format.SignStyle;

@WebServlet(name = "AdminServlet", urlPatterns = "/admin")
public class AdminServlet extends HttpServlet {
    private AdminService service = new AdminServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 设置响应头
        response.setContentType("text/html;charset=UTF-8");
        // 设置请求头:可以解决用户输入的中文乱码问题
        request.setCharacterEncoding("utf-8");

        // 根据method的不同参数值,执行不同的方法
        String method = request.getParameter("method");
        if (method == null || "".equals(method)) {
            // web页的登录: 没有参数null,或者参数值为""
            login(request, response);
        } else if ("loginA".equals(method)) {
            // Android 端的登录
            loginA(request, response);
        }



//        try {
//
//            response.setContentType("text/html;charset=UTF-8");
//            request.setCharacterEncoding("utf-8");
//
//
//            PrintWriter out = response.getWriter();
//            String result = "";
//
//            //接受参数
//            String name = request.getParameter("name");
//            String pwd = request.getParameter("pwd");
//            //封装对象
//
//            Admin admin = new Admin(null, name, pwd, null);
//            //查询数据库
//            admin = service.login(admin);
//            //判断是否成功
//            if (admin == null) {
//                System.out.println("登陆失败" + admin);
////                response.getWriter().print("<span style='color:red'>登陆失败</span>");
//                //跳去登录页，重新登陆
//                //重定向，标准路径，302，是2次请求，不能带数据
////            response.sendRedirect(request.getContextPath() + "/login.jsp");
//                //请求转发，可以携带数据,路径直接写,是服务端发出的
//                request.setAttribute("name", name);//放数据到request
//                request.getRequestDispatcher("/index_home.jsp").forward(request, response);
//                result = "登录失败";
//
//            } else {
//
//
//                System.out.println("登陆成功" + admin);
//                response.getWriter().print("<span style='color:green'>登陆成功</span>");
//                request.getRequestDispatcher("/index_manage.jsp").forward(request, response);
//                //跳去登陆页面
//                result =  "登录成功";
//
//
//
//
//            }
//            out.write(result);
//            out.flush();
//            out.close();
//            System.out.println(result);
//        } catch (Exception e) {
//            request.setAttribute("msg", "错误");
//            request.getRequestDispatcher("/msg.jsp").forward(request, response);
//        }
//
//
    }
    protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // 1: 封装对象
            Admin admin = new Admin();
            // 方法一: 利用第三方的jar的BeanUtils工具类封装对象
//            BeanUtils.populate(admin, request.getParameterMap());
//            String name = admin.getName();  // 取出name值,为了转发回登录页面
            // 方法二: 手动获取参数 并 封装对象.(若没有BeanUtils)
            String name = request.getParameter("name");
            String password = request.getParameter("pwd");
            admin.setName(name);
            admin.setPassword(password);

            // 3:查询数据库
            admin = service.login(admin);
            // 4:判断登陆是否成功
            if (admin == null) {
                System.out.println("登陆失败：" + admin);
                // 方法二:请求转发，可以携带数据，路径直接写.因为是服务器端发出的，浏览器不知道，所有是算是一次请求
                request.setAttribute("name", name);  //放数据到request
                request.setAttribute("msg", "登陆失败！请检查用户名或密码！");
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            } else {
                System.out.println("登陆成功：" + admin);
                response.getWriter().print("<span style='color:green'>登陆成功</span>");
                request.getSession().setAttribute("name", name);
                request.setAttribute("name", name);
                request.getRequestDispatcher("/index_manage.jsp").forward(request, response);
                // 跳去后台管理主界面

            }
        } catch (Exception e) {
            // 错误信息
            request.setAttribute("msg", "错误！");
            // 此页面暂时未开发
//            request.getRequestDispatcher("/jsps/msg.jsp").forward(request, response);
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
    protected void loginA(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // 封装对象
            Admin admin = new Admin();
//            BeanUtils.populate(admin, request.getParameterMap());

            String name = request.getParameter("name");
            String password = request.getParameter("pwd");
            admin.setName(name);
            admin.setPassword(password);

            // 3:查询数据库
            admin = service.login(admin);
            // 4:判断登陆是否成功
            if (admin == null) {
                System.out.println("Android端 登陆失败：" + admin);
                // 失败输出 0
                response.getWriter().print("0");
            } else {
                System.out.println("Android端 登陆成功：" + admin);
                if (admin.getLimits().equals(1)) {
                    // 成功输出 1 管理员
                    response.getWriter().print("1");
                } else {
                    // 成功输出 2
                    response.getWriter().print("2");
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
