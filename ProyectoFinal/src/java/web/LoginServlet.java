/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;

import dao.DaoLogin;
import dao.DaoMenu;
import dao.imp.DaoLoginImpl;
import dao.imp.DaoMenuImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "LoginServlet", urlPatterns = {"/Login"})
public class LoginServlet extends HttpServlet {

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
        String user= request.getParameter("user");
        String pass= request.getParameter("password");
        String file="login.jsp";
        
        String msg="";
        
        if(user=="" || pass=="")
        {
            msg="<span style='color:red'>Ingrese un usuario / contraseña válidos</span>";
        }
        else
        {
            DaoLogin daoLogin=new DaoLoginImpl();
            DaoMenu daoMenu=new DaoMenuImpl();
            
            List<Object[]> list=null;
            List<Object[]> menu=null;
            list=daoLogin.Login(user, pass);

            if(list==null || list.isEmpty())
                msg="<span style='color:red'>Usuario o Contraseña Incorrectos</span>";
            else
            {
                Object[] obj=list.get(0);
                request.getSession().setAttribute("id_user",obj[0]);
                request.getSession().setAttribute("id_rol",obj[1]);
                request.getSession().setAttribute("nombre",obj[2]);
                file="pages/index.jsp";
                
                menu=daoMenu.Menu((Integer)obj[1]);
                request.getSession().setAttribute("menu",menu);
                response.sendRedirect(file);
            }
        }
        if(msg!="")
        {
            request.setAttribute("msg", msg);
            RequestDispatcher dispatcher= request.getRequestDispatcher(file);
            dispatcher.forward(request, response);
        }
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