/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Base64;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Carrinho;
import model.bean.Produto;
import model.bean.Usuario;
import model.dao.CarrinhoDAO;
import model.dao.ProdutoDAO;

/**
 *
 * @author Senai
 */
public class ProdutoEspecificoController extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/WEB-INF/jsp/produto-especifico.jsp";
        
        ProdutoDAO dao = new ProdutoDAO();
        Produto produto = new Produto();
        
        int id = Integer.parseInt(request.getParameter("id"));
        produto = dao.readById(id);
        request.setAttribute("produto", produto);
        
        if (produto.getImagemBytes() != null) {
            String imagemBase64 = Base64.getEncoder().encodeToString(produto.getImagemBytes());
            produto.setImagemBase64(imagemBase64);
        }
        
        request.setAttribute("idusuario", Usuario.getIdUsuarioStatic());
        
        RequestDispatcher d = getServletContext().getRequestDispatcher(url);
        d.forward(request, response);
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
        String url = request.getServletPath();
        String nextPage = "/WEB-INF/jsp/carrinho.jsp";
        
        if(url.equals("/adicionarCarrinho")) {
            Carrinho carrinho = new Carrinho();
            
            int id = Integer.parseInt(request.getParameter("id-produto"));
            int qtd = Integer.parseInt(request.getParameter("quantidade"));
                           
            carrinho.setIdProduto(id);
            carrinho.setQuantidade(qtd);         
            
            CarrinhoDAO carrinhoDao = new CarrinhoDAO();
            carrinhoDao.adicionarCarrinho(carrinho);
            
            response.sendRedirect("./carrinho");                
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
