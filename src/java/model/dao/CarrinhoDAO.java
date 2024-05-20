package model.dao;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.bean.Carrinho;

public class CarrinhoDAO {

    public boolean adicionarCarrinho(Carrinho carrinho) {
        try {
            Connection conexao = Conexao.conectar();
            
            PreparedStatement stmt = conexao.prepareStatement("INSERT INTO carrinho (produto_id, quantidade) VALUES (?, ?) ");
            stmt.setInt(1, carrinho.getIdProduto());
            stmt.setInt(2, carrinho.getQuantidade());
            
            stmt.executeUpdate();         
            
            stmt.close();
            conexao.close();
            return true;
            
        } catch (SQLException e) {
            e.printStackTrace();
            return false;        
        }      
    }
}
