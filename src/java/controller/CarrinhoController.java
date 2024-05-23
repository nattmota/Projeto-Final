/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Carrinho;
import model.dao.CarrinhoDAO;

/**
 *
 * @author Senai
 */
public class CarrinhoController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/WEB-INF/jsp/carrinho.jsp";

        Carrinho c = new Carrinho();
        CarrinhoDAO dao = new CarrinhoDAO();

        List<Carrinho> carrinho = dao.visualizarCarrinho();

        request.setAttribute("carrinhos", carrinho);

        float total = 0.0f;
        for (Carrinho item : carrinho) {
            total += item.getSubtotal();
        }

        request.setAttribute("total", total);

        System.out.println("Total: " + total);

        RequestDispatcher d = getServletContext().getRequestDispatcher(url);
        d.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = request.getServletPath();

        if (url.equals("/deletarItemCarrinho")) {
            int idCarrinho = Integer.parseInt(request.getParameter("idCarrinho"));

            CarrinhoDAO dao = new CarrinhoDAO();
            Carrinho carrinho = new Carrinho();
            
            carrinho.setIdCarrinho(idCarrinho);

            dao.deletarItemCarrinho(carrinho);

            // Redireciona para a página do carrinho após a exclusão
            response.sendRedirect("./home");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
