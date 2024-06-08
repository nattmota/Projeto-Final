package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Usuario;
import model.dao.UsuarioDAO;


public class CadastroUsuarioController extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = "/WEB-INF/jsp/cadastro-usuario.jsp";

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
        String nextPage = "/WEB-INF/jsp/cadastro-usuario.jsp";
        UsuarioDAO dao = new UsuarioDAO();

        String errorMessage = "";

        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String confirmarSenha = request.getParameter("confirmarSenha");
        String telefone = request.getParameter("telefone");
        String cpf = request.getParameter("cpf");

        
        // Remover caracteres que não sao números
        telefone = telefone.replaceAll("[^0-9]", "");
        cpf = cpf.replaceAll("[^0-9]", "");

        
        // Validação se campos de telefone e cpf contém apeas números
        if (!telefone.matches("\\d+") || !cpf.matches("\\d+")) {
            errorMessage = "Telefone e CPF devem conter apenas números.";
        } else {
            if(cpf.length() != 11) {
                errorMessage = "CPF deve ter 11 digitos.";
            } if(telefone.length() != 11 && telefone.length() != 10) {
                errorMessage = "Telefone deve ter 10 ou 11 digitos.";
            }            
            if (nome == null || nome.trim().isEmpty()
                    || email == null || email.trim().isEmpty()
                    || senha == null || senha.trim().isEmpty()
                    || confirmarSenha == null || confirmarSenha.trim().isEmpty()
                    || telefone == null || telefone.trim().isEmpty()
                    || cpf == null || cpf.trim().isEmpty()) {
                errorMessage = "Todos os campos são obrigatórios.";
            } else {
                if (senha.equals(confirmarSenha)) {                 
                    Usuario usuario = new Usuario();
                    usuario.setNome(nome);
                    usuario.setEmail(email);
                    usuario.setSenha(senha);
                    usuario.setTelefone(telefone);
                    usuario.setCpf(cpf);
                    
                    if(errorMessage.isEmpty()) {
                        dao.cadastro(usuario);
                    request.setAttribute("successMessage", "Cadastro realizado com sucesso!");
                    nextPage = "./login";
                    }                  
                } else {
                    errorMessage = "As senhas não coincidem";
                }
            }
        }
            
            // Definir mensagens de erro na requisição
            request.setAttribute("errorMessage", errorMessage);

            // Encaminhar para a próxima página
            RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);

        }

        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }

    }
