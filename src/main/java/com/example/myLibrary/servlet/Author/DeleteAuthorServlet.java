package com.example.myLibrary.servlet.Author;

import com.example.myLibrary.manager.AuthorManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteAuthor")
public class DeleteAuthorServlet extends HttpServlet {
    private static AuthorManager AuthorManager = new AuthorManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        AuthorManager.removeById(id);
        resp.sendRedirect("/author");
    }

}
