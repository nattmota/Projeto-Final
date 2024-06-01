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
import javax.servlet.http.HttpSession;
import model.bean.Carrinho;
import model.bean.Pedido;
import model.bean.Usuario;
import model.dao.CarrinhoDAO;
import model.dao.PedidoDAO;
import model.dao.ProdutoPedidoDAO;

/**
 *
 * @author Senai
 */
public class CarrinhoController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/WEB-INF/jsp/carrinho.jsp";
       
        CarrinhoDAO dao = new CarrinhoDAO();

        List<Carrinho> carrinho = dao.visualizarCarrinho();

        request.setAttribute("carrinhos", carrinho);

        float total = 0.0f;
        for (Carrinho item : carrinho) {
            total += item.getSubtotal();
        }

        request.setAttribute("total", total);
        System.out.println("Total: " + total);
        
        request.setAttribute("idUsuario", Usuario.getIdUsuarioStatic());

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
        HttpSession session = request.getSession();

        // FUNÇÃO PARA DELETAR UM ÚNICO PRODUTOS DO CARRINHO
        if (url.equals("/deletarItemCarrinho")) {
            int idCarrinho = Integer.parseInt(request.getParameter("idCarrinho"));

            CarrinhoDAO dao = new CarrinhoDAO();                 

            dao.deletarItemCarrinho(idCarrinho);
           
            response.sendRedirect("./carrinho");
            
        // FUNÇÃO PARA DELETAR TODOOS OS ITENS DO CARRINHO DO USUÁRIO LOGADO    
        } else if (url.equals("/esvaziarCarrinho")) {
            int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
            
            CarrinhoDAO dao = new CarrinhoDAO();
            
            dao.esvaizarCarrinho(idUsuario);
            
            response.sendRedirect("./carrinho");
        
        } else if (url.equals("/atualizarQuantidadeMais")) {
            int idCarrinho = Integer.parseInt(request.getParameter("idCarrinho"));
            int qtdAtualizada = Integer.parseInt(request.getParameter("quantidade"));
            
            CarrinhoDAO dao = new CarrinhoDAO();
            
            dao.atualizarQuantidadeDoProdutoNoCarrinho(idCarrinho, qtdAtualizada);
            
            response.sendRedirect("./carrinho");
            
            
        } else if (url.equals("/atualizarQuantidadeMenos")) {
            int idCarrinho = Integer.parseInt(request.getParameter("idCarrinho"));
            int qtdAtualizada = Integer.parseInt(request.getParameter("quantidade"));
            
            CarrinhoDAO dao = new CarrinhoDAO();
            
            if(qtdAtualizada > 0) {
                dao.atualizarQuantidadeDoProdutoNoCarrinho(idCarrinho, qtdAtualizada);
                response.sendRedirect("./carrinho");
            } else {
                dao.deletarItemCarrinho(idCarrinho);
                response.sendRedirect("./carrinho");
            }          
        } else if (url.equals("/finalizarCompra")) {
            int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
            float valorTotal = Float.parseFloat(request.getParameter("valorTotal"));
            
            CarrinhoDAO cDao = new CarrinhoDAO();
            List<Carrinho> carrinho = cDao.visualizarCarrinho();

            request.setAttribute("carrinhos", carrinho);
            
            Pedido pedido = new Pedido(idUsuario,valorTotal);
            PedidoDAO dao = new PedidoDAO();
            
            int idPedido = dao.criarNovoPedido(pedido);
            pedido.setIdPedido(idPedido);
            
            ProdutoPedidoDAO produtoPedidoDAO = new ProdutoPedidoDAO();
            produtoPedidoDAO.adicionarProdutosPedido(pedido, carrinho);
            
            cDao.esvaizarCarrinho(idUsuario);

            response.sendRedirect("./dados-endereco?idPedido=" + idPedido);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
