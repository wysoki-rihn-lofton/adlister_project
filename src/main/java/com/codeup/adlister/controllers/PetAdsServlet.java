package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Pet;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.PetAdsServlet", urlPatterns = "/create")
public class PetAdsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }request.getRequestDispatcher("/WEB-INF/ads/petads.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println(request.getParameter("name"));
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        String breed = request.getParameter("breed");
        String gender = request.getParameter("gender");
        String age = request.getParameter("age");
        String description = request.getParameter("description");
        String cost = request.getParameter("cost");
        String title = request.getParameter("title");
        String traits = request.getParameter("traits");
        User user = (User) request.getSession().getAttribute("user");
        // validate input
        boolean inputHasErrors = name.isEmpty()
                || type.isEmpty()
                || breed.isEmpty()
                || gender.isEmpty()
                || age.isEmpty()
                || description.isEmpty()
                || cost.isEmpty()
                || title.isEmpty()
                || traits.isEmpty();
        if (inputHasErrors) {
            response.sendRedirect("/create");
            return;
        }
        // create and save a new pets
        Pet pet = new Pet(name, type, breed, gender, age, description, cost, title, traits);
        pet.setUser_id(user.getId());
        DaoFactory.getPetsDao().insert(pet);
        response.sendRedirect("/profile");
    }
}
