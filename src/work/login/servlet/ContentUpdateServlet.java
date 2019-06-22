package work.login.servlet;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import work.login.domain.FourContent;
import work.login.service.impl.FourContentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@WebServlet(name = "ContentUpdateServlet", urlPatterns = "/contentupdate")
public class ContentUpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        String method = request.getParameter("method");
        if (method == null || "".equals(method)) {
            // web: 没有参数null,或者参数值为""
            updatePage(request, response);
        } else if ("updatePage".equals(method)) {
            // Android
            try {
                updatePageA(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }

        } else if ("updateNoImgPage".equals(method)) {
            updateNoImgPageA(request, response);
        }


//        content.setId(Integer.parseInt(request.getParameter("uId")));
//        content.setH1(request.getParameter("uTitle"));
//        content.setSpan(request.getParameter("uAurthor"));
//        content.setUploadtime(request.getParameter("uUploadtime"));
//        content.setP(request.getParameter("uContent"));
//        try {
//            BeanUtils.populate(content, request.getParameterMap());
//
//            new FourContentServiceImpl().updateContent(content);
//
//            request.getRequestDispatcher("/index_manage.jsp").forward(request, response);
//
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }

    }

    private void updateNoImgPageA(HttpServletRequest request, HttpServletResponse response) throws IOException {
        FourContent content = new FourContent();

        // 创建DiskFileItemFactory工厂
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // 创建一个文件上传解析器
        ServletFileUpload upload = new ServletFileUpload(factory);

        upload.setHeaderEncoding("UTF-8");

        try {
            List<FileItem> fileItemList = null;
            fileItemList = upload.parseRequest(request);

            Map<String, String> map = new HashMap<>();

            for (FileItem item : fileItemList) {

                // 如果fileitem中封装的是普通输入项的数据
                if (item.isFormField()) {

                    String name = item.getFieldName();

                    String value = item.getString("UTF-8");

                    map.put(name, value);

                }

            }

            content.setId(Integer.parseInt(map.get("uId")));

            content.setH1(map.get("uTitle"));

            content.setP(map.get("uContent"));

            content.setSpan(map.get("uAurthor"));

            content.setA(map.get("uFL"));

            new FourContentServiceImpl().updateNoImgContent(content);

            response.getWriter().print("success");

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("msg", "错误");
           response.getWriter().print("fail");
        }

    }

    private void updatePageA(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        FourContent content = new FourContent();

        // 创建DiskFileItemFactory工厂
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // 创建一个文件上传解析器
        ServletFileUpload upload = new ServletFileUpload(factory);


        upload.setHeaderEncoding("UTF-8");

        try {
            List<FileItem> fileItemList = null;
            fileItemList = upload.parseRequest(request);


            Map<String, String> map = new HashMap<>();

            for (FileItem item : fileItemList) {

                // 如果fileitem中封装的是普通输入项的数据
                if (item.isFormField()) {

                    String name = item.getFieldName();

                    String value = item.getString("UTF-8");

                    map.put(name, value);


                } else {// 如果是文件
                    String root = getServletContext().getRealPath("/images/content/");
                    System.out.println(item.getName());

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

                    String img = destFile.toString().substring(destFile.toString().indexOf("content") + 8);

                    map.put("uImg", "images/content/" + img);


                }

            }

            content.setId(Integer.parseInt(map.get("uId")));

            content.setH1(map.get("uTitle"));

            content.setP(map.get("uContent"));

            content.setSpan(map.get("uAurthor"));

            content.setA(map.get("uFL"));

            content.setImg(map.get("uImg"));

            new FourContentServiceImpl().updateContent(content);


            //请求转发
            response.getWriter().print("success");


        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("msg", "错误");
            response.getWriter().print("fail");
        }
    }

    private void updatePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FourContent content = new FourContent();

        // 创建DiskFileItemFactory工厂
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // 创建一个文件上传解析器
        ServletFileUpload upload = new ServletFileUpload(factory);


        upload.setHeaderEncoding("UTF-8");

        try {
            List<FileItem> fileItemList = null;
            fileItemList = upload.parseRequest(request);


            Map<String, String> map = new HashMap<>();

            for (FileItem item : fileItemList) {

                // 如果fileitem中封装的是普通输入项的数据
                if (item.isFormField()) {

                    String name = item.getFieldName();

                    String value = item.getString("UTF-8");

                    map.put(name, value);




                } else {// 如果是文件
                    String root = getServletContext().getRealPath("/images/content/");
                    System.out.println(item.getName());
                    if (item.getName().equals("")) {
                        content.setImg(map.get("oldimg"));
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

                        String img = destFile.toString().substring(destFile.toString().indexOf("content") + 8);

                        map.put("uImg", "images/content/" + img);

                        content.setImg(map.get("uImg"));
                    }

                }

            }

            content.setId(Integer.parseInt(map.get("uId")));

            content.setH1(map.get("uTitle"));

            content.setP(map.get("uContent"));

            content.setSpan(map.get("uAurthor"));

            content.setA(map.get("uFL"));


            new FourContentServiceImpl().updateContent(content);
            //请求转发
            request.getRequestDispatcher("/index_manage.jsp").forward(request, response);


        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("msg", "错误");
            request.getRequestDispatcher("/msg.jsp").forward(request, response);
        }
    }
}
