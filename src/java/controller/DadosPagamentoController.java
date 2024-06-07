package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Endereco;
import model.bean.ProdutoPedido;
import model.bean.TipoPagamento;
import model.bean.Usuario;
import model.dao.EnderecoDAO;
import model.dao.PedidoDAO;
import model.dao.ProdutoPedidoDAO;
import model.dao.TipoPagamentoDAO;
import model.dao.UsuarioDAO;
import model.dao.UsuarioPagamentoDAO;

public class DadosPagamentoController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String url = "/WEB-INF/jsp/dados-pagamento.jsp";

        //RECUPERAR VALOR DO ID PEDIDO
        int idPedido = Integer.parseInt(request.getParameter("idPedido"));
        request.setAttribute("idPedido", idPedido);

        // LISTAR PRODUTOS DO PEDIDO
        ProdutoPedidoDAO produtoPedidoDao = new ProdutoPedidoDAO();
        List<ProdutoPedido> listaProdutoPedido = produtoPedidoDao.visualizarProdutosPedido(idPedido);
        request.setAttribute("produtosPedido", listaProdutoPedido);

        // CALCULAR VALOR TOTAL DO PEDIDO
        float total = 0;
        for (ProdutoPedido produtoPedido : listaProdutoPedido) {
            total = produtoPedido.getTotal();
        }
        request.setAttribute("total", total);

        // LISTAR INFORMAÇÕES DO USUARIO DO PEDIDO
        UsuarioDAO usuarioDao = new UsuarioDAO();
        List<Usuario> infoUsuario = usuarioDao.listarInformacoesUsuario();
        request.setAttribute("usuario", infoUsuario);

        //LISTAR INFORMAÇÕES DO ENDEREÇO DO USUARIO DO PEDIDO
        EnderecoDAO enderecoDao = new EnderecoDAO();
        List<Endereco> infoEndereco = enderecoDao.ListarInfoEnderecoUsuario();
        request.setAttribute("endereco", infoEndereco);

        request.setAttribute("idusuario", Usuario.getIdUsuarioStatic());

        TipoPagamentoDAO tpDAO = new TipoPagamentoDAO();

        List<TipoPagamento> tiposPagamento = tpDAO.listarTodos();
        request.setAttribute("tipoPagamento", tiposPagamento);

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
        
        String errorMessage = "";
        request.setAttribute("errorMessage", errorMessage);
        
        if (url.equals("/enviarDadosPagamento")) {

            int idPedido = Integer.parseInt(request.getParameter("idPedido"));
            System.out.println("ID do Pedido Controller: " + idPedido);
            int tipoPagamento = Integer.parseInt(request.getParameter("tipoPagamento"));
            String numeroCartao = request.getParameter("numeroCartao");
            String nomeCartao = request.getParameter("nomeCartao");
            String vencimentoCartao = request.getParameter("vencimentoCartao");
            String cvvCartao = request.getParameter("cvvCartao");
            String cpfCnpjPortador = request.getParameter("cpfCnpjPortador");
            String telefone = request.getParameter("telefone");

            if (tipoPagamento <= 0 || tipoPagamento > 2) {
                errorMessage = "Tipo de pagamento selecionado inválido!";
            } else if (numeroCartao == null || numeroCartao.trim().isEmpty() || numeroCartao.length() != 16) {
                errorMessage = "Número do cartão inserido incorretamente";
            } else if (nomeCartao == null || nomeCartao.trim().isEmpty()) {
                errorMessage = "Nome do cartão inserido incorretamente";
            } else if (vencimentoCartao == null || vencimentoCartao.trim().isEmpty()) {
                errorMessage = "Vencimento do cartão inserido incorretamente";
            } else if (cvvCartao == null || cvvCartao.trim().isEmpty()) {
                errorMessage = "CVV do cartão inserido incorretamente";
            } else if (cpfCnpjPortador == null || cpfCnpjPortador.trim().isEmpty() || cpfCnpjPortador.length() != 11) {
                errorMessage = "CPF / CNPJ inserido(s) incorretamente";
            } else if (telefone == null || telefone.trim().isEmpty()) {
                errorMessage = "Telefone inserido incorretamente";
            } else {
                PedidoDAO pedidoDao = new PedidoDAO();
                pedidoDao.atualizarTipoPagamentoPedido(request, idPedido);
                UsuarioPagamentoDAO usuarioPagamentoDao = new UsuarioPagamentoDAO();
                usuarioPagamentoDao.inserirMetodoPagamentoUsuario(request);
                response.sendRedirect("./index");
                System.out.println("PEDIDO FEITO COM SUCESOO!");
            }
        }  
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
