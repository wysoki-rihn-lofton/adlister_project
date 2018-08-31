package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "controllers.DeleteAdServlet", urlPatterns = "/delete")
public class DeleteAdServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        if (request.getSession().getAttribute("user") == null){
//            response.sendRedirect("/login");
//            return;
//        }
        Long id = Long.parseLong(request.getParameter("id"));
        DaoFactory.getPetsDao().deleteAd(id);
        response.sendRedirect("/profile");
    }

}


