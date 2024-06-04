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
import model.bean.Pedido;
import model.bean.ProdutoPedido;
import model.bean.Usuario;
import model.dao.ProdutoPedidoDAO;

public class DadosPessoaisController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String url = "/WEB-INF/jsp/dados-pessoais.jsp";

        int idPedido = Integer.parseInt(request.getParameter("idPedido"));

        ProdutoPedidoDAO produtoPedidoDao = new ProdutoPedidoDAO();

        List<ProdutoPedido> listaProdutoPedido = produtoPedidoDao.visualizarProdutosPedido(idPedido);

        float total = 0;
        
        for (ProdutoPedido produtoPedido : listaProdutoPedido) {       
            total = produtoPedido.getTotal();
        }
    
        request.setAttribute("total", total);

        request.setAttribute("produtosPedido", listaProdutoPedido);
        
        request.setAttribute("idusuario", Usuario.getIdUsuarioStatic());

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
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
