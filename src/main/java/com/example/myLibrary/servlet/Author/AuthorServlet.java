package com.example.myLibrary.servlet.Author;

import com.example.myLibrary.manager.AuthorManager;
import com.example.myLibrary.model.Author;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/author")
public class AuthorServlet extends HttpServlet {
    private static AuthorManager AuthorManager = new AuthorManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Author> all = AuthorManager.getAll();
        req.setAttribute("allAuthors", all);
        req.getRequestDispatcher("WEB-INF/author.jsp").forward(req, resp);
    }

}