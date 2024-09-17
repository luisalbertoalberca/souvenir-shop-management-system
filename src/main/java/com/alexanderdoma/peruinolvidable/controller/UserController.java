package com.alexanderdoma.peruinolvidable.controller;

import com.alexanderdoma.peruinolvidable.model.DAOException;
import com.alexanderdoma.peruinolvidable.model.mysql.UserDAO;
import com.alexanderdoma.peruinolvidable.model.entity.User;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "UserController", urlPatterns = {"/user", "/login", "/session"})
public class UserController extends HttpServlet {
    
    private UserDAO objUserDAO = new UserDAO();
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String action = request.getServletPath();
        switch (action) {
            case "/login":
                try {
                    RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
                    dispatcher.forward(request, response);
                } catch (IOException | ServletException e) {
                }
                break;
            default:
                throw new AssertionError();
        }
//        try {
//            List<User> objUsersList = objUserDAO.getAll();
//            request.setAttribute("users", objUsersList);
//            request.getRequestDispatcher("users.jsp").forward(request, response);
//        } catch (Exception ex) {
//            request.setAttribute("users", null);
//            RequestDispatcher dispatcher = request.getRequestDispatcher("users.jsp");
//        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String action = request.getServletPath();
        switch (action) {
            case "/session":
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                try {
                    User objUser = objUserDAO.login(username, password);
                    if (objUser == null) {
                        request.setAttribute("status", "invalidCredentials");
                        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
                        dispatcher.forward(request, response);
                        return;
                    }
                    
                    HttpSession session = request.getSession();
                    session.setAttribute("status", "success");
                    response.sendRedirect(request.getContextPath());
                } catch (DAOException | IOException | ServletException ex) {
                    System.out.println(ex.getMessage());
                }
                break;
            case "/insert":
                User objUser = new User();
                objUser.setName(request.getParameter("name"));
                objUser.setLastname(request.getParameter("lastname"));
                objUser.setUsername(request.getParameter("username"));
                objUser.setEmail(request.getParameter("email"));
                objUser.setPassword(request.getParameter("password"));
                try {
                    if(objUserDAO.add(objUser) == false){
                        request.setAttribute("status", "error");
                        RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
                        dispatcher.forward(request, response);
                        return; 
                    }
                    request.setAttribute("status", "success");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
                    dispatcher.forward(request, response);
                } catch (DAOException | IOException | ServletException ex) {
                    System.out.println(ex.getMessage());
                }
                break;
            default:
                break;
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
