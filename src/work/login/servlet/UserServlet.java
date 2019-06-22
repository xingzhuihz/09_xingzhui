package work.login.servlet;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import work.login.domain.User;
import work.login.service.UserService;
import work.login.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Create by Administrator on 2019/6/19.
 */
@WebServlet(name = "UserServlet", urlPatterns = "/user")
public class UserServlet extends HttpServlet {
    private UserService service = new UserServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");


        String method = request.getParameter("method");

        if ("login".equals(method)) {
            try {
                login(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if ("register".equals(method)) {
            try {
                register(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if ("registerNoTx".equals(method)) {
            try {
                registerNoTx(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if ("userInfor".equals(method)) {
            userInfor(request, response);
        }
    }

    private void userInfor(HttpServletRequest request, HttpServletResponse response) {

    }

    private void registerNoTx(HttpServletRequest request, HttpServletResponse response) throws Exception {
        User user = new User();
        user.setName(request.getParameter("name"));
        user.setPassword(request.getParameter("password"));
        user.setPhoneNumber(request.getParameter("phoneNumber"));
        user = service.register(user);
        if (user == null) {
            System.out.println("添加用户失败");
            response.getWriter().print("0");
        } else {
            System.out.println("添加用户成功");
            response.getWriter().print("1");
        }
    }

    private void register(HttpServletRequest request, HttpServletResponse response) throws Exception {

        User user = new User();


        // 创建DiskFileItemFactory工厂
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // 创建一个文件上传解析器
        ServletFileUpload upload = new ServletFileUpload(factory);


        upload.setHeaderEncoding("UTF-8");

        try {
            List<FileItem> fileItemList = upload.parseRequest(request);

            Map<String, String> map = new HashMap<>();

            for (FileItem item : fileItemList) {
                // 如果fileitem中封装的是普通输入项的数据
                if (item.isFormField()) {
                    String name = item.getFieldName();

                    String value = item.getString("UTF-8");

                    map.put(name, value);

                } else {// 如果是文件
                    String root = getServletContext().getRealPath("/images/tx/");
                    if (item.getName().equals("")) {
                        user.setImg("");
                    } else {
                        // 得到文件保存路径
                        String fileName = item.getName();

                        // 处理文件名的绝对路径
                        int index = fileName.lastIndexOf("\\");

                        if (index != -1) {
                            fileName = fileName.substring(index + 1);
                        }

                        // 给文件名称添加UUID前缀，处理文件同名问题
                        String saveName = UUID.randomUUID().toString().toUpperCase() + "-" + fileName;

                        File dirFile = new File(root, "");


                        //创建目标链
                        dirFile.mkdirs();


                        // 创建目标文件
                        File destFile = new File(dirFile, saveName);

                        // 保存
                        item.write(destFile);


                        String img = destFile.toString().substring(destFile.toString().indexOf("tx") + 3);

                        map.put("img", "images/tx/" + img);


                    }

                }

            }

            user.setName(map.get("name"));
            user.setPhoneNumber(map.get("phoneNumber"));
            user.setPassword(map.get("password"));
            user.setImg(map.get("img"));

            user = service.register(user);
            if (user == null) {
                System.out.println("添加用户失败");
                response.getWriter().print("0");
            } else {
                System.out.println("添加用户成功");
                response.getWriter().print("1");
            }

        } catch (Exception e) {
            response.getWriter().print("fail");
        }
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws Exception {

        User user = new User();
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        user.setName(name);
        user.setPassword(password);

        user = service.login(user);

        if (user == null) {
            System.out.println("用户登录失败");
            response.getWriter().print("0");
        } else {
            System.out.println("用户登录成功");
            if (user.getLimits().equals(1)) {
                response.getWriter().print("1" + "id:" + user.getId() + "phonenumber:" + user.getPhoneNumber() + "img:" + user.getImg());
            } else {
                response.getWriter().print("2" + "id:" + user.getId() + "phonenumber:" + user.getPhoneNumber() + "img:" + user.getImg());
            }
        }
    }
}
