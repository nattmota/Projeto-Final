package model.dao;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpServletRequest;
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
    
    public boolean atualizarEnderecoPedido(Pedido pedido) {
        try{
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = conexao.prepareStatement("UPDATE pedido SET endereco_entrega_id = ? WHERE idPedido = ?");
            stmt.setInt(1, pedido.getIdEndereco());
            stmt.setInt(2, pedido.getIdPedido());
            
            int linhasAfetadas = stmt.executeUpdate();
            
            return linhasAfetadas > 0;
           
        }catch(SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean atualizarTipoPagamentoPedido(HttpServletRequest request, int idPedido) {
        try{
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = conexao.prepareStatement("UPDATE pedido SET tipo_pagamento_id = ? WHERE idPedido = ?");
            
            int idTipoPagamento = Integer.parseInt(request.getParameter("tipoPagamento"));
            
            stmt.setInt(1, idTipoPagamento);
            
            stmt.setInt(2, idPedido);
            
            int linhasAfetadas = stmt.executeUpdate();
            
            return linhasAfetadas > 0;
           
        }catch(SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public void atualizarStatusPedido(int idPedido) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = conexao.prepareStatement("UPDATE pedido SET status_pedido = ? WHERE idPedido = ?");
            
            String status = "processando";
            
            stmt.setString(1, status);
            stmt.setInt(2, idPedido);
            
            int linhasAfetadas = stmt.executeUpdate();
            
            if(linhasAfetadas > 0) {
                System.out.println("Status atualizado com sucesso!");              
            } else {
                System.out.println("Nenhum pedido selecionado para atualizacao!");
            }            
        }catch(SQLException e) {
            e.printStackTrace();
        }
    }
}
