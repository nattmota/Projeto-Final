package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Endereco;
import model.bean.Pedido;
import model.bean.ProdutoPedido;
import model.bean.Usuario;
import model.dao.EnderecoDAO;
import model.dao.PedidoDAO;
import model.dao.ProdutoPedidoDAO;
import model.dao.UsuarioDAO;

public class DadosEnderecoController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/WEB-INF/jsp/dados-endereco.jsp";

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
        String url = request.getServletPath();

        System.out.println("Servlet chamado: " + url);

        int idPedido = Integer.parseInt(request.getParameter("idPedido"));

        if (url.equals("/inserirEndereco")) {
            EnderecoDAO eDAO = new EnderecoDAO();

            String estado = request.getParameter("estado");
            String cidade = request.getParameter("cidade");
            String cep = request.getParameter("cep");
            String rua = request.getParameter("rua");
            String numero = request.getParameter("numero");
            String complemento = request.getParameter("complemento");

            if (estado != null && !estado.isEmpty()
                    && cidade != null && !cidade.isEmpty()
                    && cep != null && !cep.isEmpty()
                    && rua != null && !rua.isEmpty()
                    && numero != null && !numero.isEmpty()) {

                Endereco endereco = new Endereco();
                endereco.setEstado(estado);
                endereco.setCidade(cidade);
                endereco.setCep(cep);
                endereco.setRua(rua);
                endereco.setNumero(numero);
                endereco.setComplemento(complemento);
                endereco.setId_usuario(Usuario.getIdUsuarioStatic());

                if (eDAO.inserirEndereco(endereco)) {
                    int idEndereco = endereco.getIdEndereco();
                    Pedido pedido = new Pedido();
                    PedidoDAO pDao = new PedidoDAO();

                    pedido.setIdPedido(idPedido);
                    pedido.setIdEndereco(idEndereco);

                    if (pDao.atualizarEnderecoPedido(pedido)) {
                        response.sendRedirect("./dados-pagamento?idPedido=" + idPedido);
                    } else {
                        System.out.println("Erro ao inserir!");
                        response.sendRedirect("./dados-endereco?idPedido=" + idPedido);
                    }
                } else {
                    System.out.println("Erro ao inserir!");
                    response.sendRedirect("./dados-endereco?idPedido=" + idPedido);
                }
            } else {
                System.out.println("Dados incompletos do endereço!");
                response.sendRedirect("./dados-endereco?idPedido=" + idPedido);
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
