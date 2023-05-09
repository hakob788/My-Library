package com.example.myLibrary.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(urlPatterns = {"/home", "/books", "/author", "/createAuthor", "/createBook", "/deleteBook", "/deleteAuthor", "/updateBook", "/updateAuthor"})
public class AuthFilter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (javax.servlet.http.HttpServletRequest) servletRequest;
        HttpServletResponse resp = (javax.servlet.http.HttpServletResponse) servletResponse;
        if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("/");
        } else
            filterChain.doFilter(req, resp);
    }
}