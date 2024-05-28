package model.dao;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import model.bean.Carrinho;
import model.bean.Pedido;

public class ProdutoPedidoDAO {
    public void adicionarProdutosPedido(Pedido pedido, List<Carrinho> itensCarrinho) {
        try{
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = conexao.prepareStatement("INSERT INTO produto_pedido (pedido_id, produto_id, quantidade) VALUES (?, ?, ?)");
            
            for(Carrinho itens : itensCarrinho) {
                stmt.setInt(1, pedido.getIdPedido());
                stmt.setInt(2, itens.getIdProduto());
                stmt.setInt(3, itens.getQuantidade());
                
                stmt.addBatch();
            }
            
            stmt.executeBatch();
            
            stmt.close();
            conexao.close();
            
        }catch(SQLException e) {
            e.printStackTrace();
        }
    }
}
