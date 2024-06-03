package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Usuario;
import model.dao.UsuarioDAO;

public class LoginController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = "/WEB-INF/jsp/login.jsp";
        System.out.println("USUARIO STATIC: " + Usuario.getIdUsuarioStatic());
        
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
        
        if (url.equals("/logar")) {
            String nextPage = "/WEB-INF/jsp/login.jsp";

            String email = request.getParameter("email");
            String password = request.getParameter("senha");

            System.out.println(email);
            System.out.println(password);
            
            // Verificar se os campos estão vazios
            if (email == null || email.isEmpty() || password == null || password.isEmpty()) {
                nextPage = "/WEB-INF/jsp/login.jsp";
                request.setAttribute("errorMessage", "Por favor, preencha todos os campos.");
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
                dispatcher.forward(request, response);
                return;
            }

            // Se o usuário e a senha forem "admin", redirecione para outra página
            if (email.equals("admin") && password.equals("admin")) {
                response.sendRedirect("./index"); // 
                return;
            }

            Usuario user = new Usuario();
            UsuarioDAO valida = new UsuarioDAO();

            user.setEmail(email);
            user.setSenha(password);

            try {
                Usuario userAutenticado = valida.login(user);

                if (userAutenticado != null && !userAutenticado.getEmail().isEmpty()) {
                    response.sendRedirect("./index");
                    System.out.println("ID USER STATIC: " + Usuario.getIdUsuarioStatic());
                } else {
                    nextPage = "/WEB-INF/jsp/login.jsp";
                    request.setAttribute("errorMessage", "Email ou senha inválidos");
                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
                    dispatcher.forward(request, response);
                }
            } catch (Exception e) {
                nextPage = "/WEB-INF/jsp/login.jsp";
                request.setAttribute("errorMessage", "Nome ou senha inválidos");
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
                dispatcher.forward(request, response);
            }
        } else {
            processRequest(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
