package com.example.myLibrary.servlet.Book;


import com.example.myLibrary.constants.SharedConstants;
import com.example.myLibrary.manager.AuthorManager;
import com.example.myLibrary.manager.BookManager;
import com.example.myLibrary.model.Author;
import com.example.myLibrary.model.Book;
import com.example.myLibrary.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.List;

@WebServlet("/updateBook")
@MultipartConfig(
        maxFileSize = 1024 * 1024 * 5,
        maxRequestSize = 1024 * 2024 * 15,
        fileSizeThreshold = 1024 * 1024
)
public class UpdateBookServlet extends HttpServlet {
    private static final BookManager BOOK_MANAGER = new BookManager();

    private static final AuthorManager AUTHOR_MANAGER = new AuthorManager();


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Book book = BOOK_MANAGER.getById(id);
        List<Author> authors = AUTHOR_MANAGER.getAll();
        req.setAttribute("book", book);
        req.setAttribute("authors", authors);
        req.getRequestDispatcher("WEB-INF/BookUpdate.jsp").forward(req,resp);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String title =  req.getParameter("title");
        String description =  req.getParameter("description");
        int price =  Integer.parseInt(req.getParameter("price"));
        int authorId = Integer.parseInt(req.getParameter("author"));
        Author author = AUTHOR_MANAGER.getById(authorId);
        Part pic = req.getPart("profilePic");
        String picName = null;
        if (pic != null || pic.getSize() > 0) {
            picName = System.nanoTime() + "_" + pic.getSubmittedFileName();
            pic.write(SharedConstants.UPLOAD_FOLDER + picName);
        }
        User user = (User) req.getSession().getAttribute("user");
        if (user == null){
            resp.sendRedirect("index.jsp");
        }
        Book book = new Book(id,title,description,price,author,user,picName);
        BOOK_MANAGER.update(book);
        resp.sendRedirect("/books");
    }
}