package model.dao;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import model.bean.Pedido;

public class PedidoDAO {
    public int criarNovoPedido(Pedido pedido) {       
        try {
            Connection conexao = Conexao.conectar();
            
            // Statement.RETURN_GENERATED_KEYS retorna do banco de dados o ID do pedido que é AUTO_INCREMENT, para ser utilizado na implementação 
            // da lógica do produto_pedido;
            PreparedStatement stmt = conexao.prepareStatement("INSERT INTO pedido (usuario_id, valor_total) VALUES (?, ?)", Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1, pedido.getIdUsuario());
            stmt.setFloat(2, pedido.getValorTotal());
            
            stmt.executeUpdate();
            
            // Aqui estou pegando o retorno de valor da chave primária e inserindo ela, para o IdPedido do objeto Pedido;
            try (ResultSet rs = stmt.getGeneratedKeys()) {
                if(rs.next()) {
                    pedido.setIdPedido(rs.getInt(1));
                }
            }
            
            stmt.close();
            conexao.close();
            
        }catch(SQLException e) {
            e.printStackTrace();
        }
        return pedido.getIdPedido();        
    }
}
