package work.login.servlet;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import work.login.domain.FourContent;
import work.login.service.FourContentService;
import work.login.service.impl.FourContentServiceImpl;
import work.login.utils.UUIDUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.*;

@WebServlet(name = "ContentAddServlet", urlPatterns = "/contentadd")
public class ContentAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        // 获取session中令牌和提交过来的令牌
//        String s_lingpai = request.getParameter("code_lingpai");
        String session_lingpai = (String) request.getSession().getAttribute("s_lingpai");


        // 移除session中的令牌
        request.getSession().removeAttribute("s_lingpai");




        FourContent content = new FourContent();


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
                   String s_lingpai = map.get("code_lingpai");
                    // 比较两个令牌
                    if (s_lingpai.equals("") || !s_lingpai.equals(session_lingpai)) {
                        request.setAttribute("msg", "重复提交");
                        request.getRequestDispatcher("/index_manage.jsp").forward(request, response);
                        return;
                    }

                } else {// 如果是文件
                    String root = getServletContext().getRealPath("/images/content/");

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


                    String img = destFile.toString().substring(destFile.toString().indexOf("content")+8);

                    map.put("cimg", "images/content/"+img);


                }

            }

            content.setH1(map.get("ctitle"));

            content.setImg(map.get("cimg"));

            content.setP(map.get("ctitle"));

            content.setSpan(map.get("cauthor"));

            content.setUploadtime(map.get("cuploadtime"));

            content.setA("xtwh.jsp");









//            BeanUtils.populate(content, request.getParameterMap());
//            content.setId(UUIDUtils.UUIDGetId());
//            content.setH1(request.getParameter("ctitle"));
//            content.setImg(request.getParameter("cimg"));
//            content.setP(request.getParameter("ccontent"));;
//            content.setSpan(request.getParameter("cauthor"));
//            content.setUploadtime(request.getParameter("cuploadtime"));
//            content.setA("xtwh.jsp");
//            调用service完成添加操作
//            new FourContentServiceImpl().addContent(content);

//
//            int id = (int) System.currentTimeMillis();
//            content.setId(id);
//            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");// 设置日期格式
//            String date = df.format(new Date());
//            content.setUploadtime(date);
            new FourContentServiceImpl().addContent(content);
            //请求转发
            request.getRequestDispatcher("/index_manage.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("msg", "错误");
            request.getRequestDispatcher("/msg.jsp").forward(request, response);
        }

    }

}
