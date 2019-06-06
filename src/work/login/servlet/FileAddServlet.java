package work.login.servlet;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * Create by Administrator on 2019/6/5.
 */
@WebServlet(name = "FileAddServlet",urlPatterns = "/addfile")
public class FileAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        // 声明临时目录，没有则用系统的临时目录
        DiskFileItemFactory disk = new DiskFileItemFactory();
        // 解析
        ServletFileUpload upload = new ServletFileUpload(disk);

        try {
            List<FileItem> list = upload.parseRequest(request);
            // 获取文件
            FileItem file = list.get(0);
            // 获取文件名
            String fileName = file.getName();
            fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);

            // 获取文件类型
            String contentType = file.getContentType();
            // 文件大小
            long size = file.getSize(); //bytes

            // 将信息放入request
            request.setAttribute("fileName", fileName);
            request.setAttribute("size", size);
            request.setAttribute("contentType", contentType);

            // 上传到真实目录

            String path = getServletContext().getRealPath("/images/content");
            file.write(new File(path, fileName));
            file.delete();

            request.getRequestDispatcher("/index_manage.jsp").forward(request, response);

        } catch (Exception e) {

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
