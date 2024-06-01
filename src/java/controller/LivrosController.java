package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Base64;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Produto;
import model.dao.ProdutoDAO;


public class LivrosController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String url = "/WEB-INF/jsp/livros.jsp";
        
        ProdutoDAO dao = new ProdutoDAO();

        List<Produto> produto = dao.listarPorCategoriaLivros();
        for (int i = 0; i < produto.size(); i++) {
            if (produto.get(i).getImagemBytes() != null) {
                String imagemBase64 = Base64.getEncoder().encodeToString(produto.get(i).getImagemBytes());
                produto.get(i).setImagemBase64(imagemBase64);
            }

        }
        
        request.setAttribute("produtos", produto);

        RequestDispatcher d = getServletContext().getRequestDispatcher(url);
        d.forward(request, response);response.setContentType("text/html;charset=UTF-8");
        
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String url = request.getServletPath();
        
        if (url.equals("/buscar")) {
            String pesquisa = request.getParameter("pesquisa");
            pesquisa = "%" + pesquisa + "%";

            ProdutoDAO dao = new ProdutoDAO();
            List<Produto> produtos = dao.buscaProdutos(pesquisa);
            for (int i = 0; i < produtos.size(); i++) {
                if (produtos.get(i).getImagemBytes() != null) {
                    String imagemBase64 = Base64.getEncoder().encodeToString(produtos.get(i).getImagemBytes());
                    produtos.get(i).setImagemBase64(imagemBase64);
                }
            }
            System.out.println("erro");

            request.setAttribute("produtos", produtos);

            // Redirecione de volta para a página principal
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/livros.jsp");
            dispatcher.forward(request, response);
        } else {
            processRequest(request, response);
            System.out.println("Else");
        }       
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
