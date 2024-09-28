package com.alexanderdoma.peruinolvidable.controller;

import com.alexanderdoma.peruinolvidable.model.entity.Orderline;
import com.alexanderdoma.peruinolvidable.model.entity.Product;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "CartController", urlPatterns = {"/cart","/cart/add","/cart/remove"})
public class CartController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        HttpSession session = request.getSession();
        switch (action) {
            case "/cart":
                request.getRequestDispatcher("cart.jsp").forward(request, response);
                break;
            case "/cart/remove":
                List<Orderline> products = (List<Orderline>) session.getAttribute("products");
                for (Orderline product : products){
                    if (Objects.equals(product.getId(), Integer.valueOf(request.getParameter("id")))) { 
                        products.remove(product);
                        request.getRequestDispatcher("/cart").forward(request, response);
                    }
                }
                break;
            default:
                throw new AssertionError();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            case "/cart/add":
                addProductToCart(request);
                response.sendRedirect(request.getContextPath() + "/cart");
                break;
                
            default:
                throw new AssertionError();
        }
    }

    void addProductToCart(HttpServletRequest request){
        HttpSession session = request.getSession();
        List<Orderline> orderlines = new ArrayList<>();
        if ((List<Orderline>) session.getAttribute("orderlines") != null) {orderlines = (List<Orderline>) session.getAttribute("orderlines"); }
        Product objProduct = new Product();
        objProduct.setId(Integer.valueOf(request.getParameter("id_product")));
        Orderline orderline = new Orderline();
        orderline.setQuantity(Integer.parseInt(request.getParameter("quantity")));
        orderline.setProduct(objProduct);
        orderlines.add(orderline);
        session.setAttribute("orderlines", orderlines);
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
