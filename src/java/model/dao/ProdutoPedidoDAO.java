package model.dao;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import model.bean.Carrinho;
import model.bean.Pedido;
import model.bean.ProdutoPedido;

public class ProdutoPedidoDAO {

    public void adicionarProdutosPedido(Pedido pedido, List<Carrinho> itensCarrinho) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = conexao.prepareStatement("INSERT INTO produto_pedido (pedido_id, produto_id, quantidade) VALUES (?, ?, ?)");

            for (Carrinho itens : itensCarrinho) {
                stmt.setInt(1, pedido.getIdPedido());
                stmt.setInt(2, itens.getIdProduto());
                stmt.setInt(3, itens.getQuantidade());

                stmt.addBatch();
            }

            stmt.executeBatch();

            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<ProdutoPedido> visualizarProdutosPedido(int pedidoId) {
        List<ProdutoPedido> listaProdutosPedido = new ArrayList();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = conexao.prepareStatement("SELECT \n"
                    + "    pp.idProdutoPedido,\n"
                    + "    pp.pedido_id,\n"
                    + "    p.imagem,\n"
                    + "    p.nome AS nome_produto,\n"
                    + "    pp.quantidade,\n"
                    + "    (pp.quantidade * p.valor) AS subtotal,\n"
                    + "    pd.valor_total\n"
                    + "FROM \n"
                    + "    produto_pedido pp\n"
                    + "JOIN \n"
                    + "    produto p ON pp.produto_id = p.idProduto\n"
                    + "JOIN \n"
                    + "    pedido pd ON pp.pedido_id = pd.idPedido\n"
                    + "WHERE \n"
                    + "    pp.pedido_id = ?;");
            
            stmt.setInt(1, pedidoId);
            
            ResultSet rs = stmt.executeQuery();
            
            while(rs.next()) {
                ProdutoPedido produtoPedido = new ProdutoPedido();
                produtoPedido.setIdProdutoPedido(rs.getInt("idProdutoPedido"));
                produtoPedido.setIdPedido(rs.getInt("pedido_id"));
                byte[] imagemBytes = rs.getBytes("imagem");
                produtoPedido.setImagemBytes(imagemBytes);
                if (imagemBytes != null) {
                    String imagemBase64 = Base64.getEncoder().encodeToString(imagemBytes);
                    produtoPedido.setImagemBase64(imagemBase64);
                }
                produtoPedido.setNome(rs.getString("nome_produto"));
                produtoPedido.setQuantidade(rs.getInt("quantidade"));
                produtoPedido.setSubtotal(rs.getFloat("subtotal"));
                produtoPedido.setTotal(rs.getFloat("valor_total"));
                
                listaProdutosPedido.add(produtoPedido);
            }
            
            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaProdutosPedido;
    }
}
