package model.dao;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import model.bean.Usuario;
import model.bean.TipoPagamento;

public class UsuarioPagamentoDAO {
    public boolean inserirMetodoPagamentoUsuario(HttpServletRequest request) {
        try{
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = conexao.prepareStatement("INSERT INTO usuario_pagamento (idUsuario,idTipoPagamento) VALUES (?,?)");
            
            stmt.setInt(1, Usuario.getIdUsuarioStatic());
            
            int idTipoPagamento = Integer.parseInt(request.getParameter("tipoPagamento"));
            
            stmt.setInt(2, idTipoPagamento);
            
            int linhasAfetadas = stmt.executeUpdate();
            
            return linhasAfetadas > 0;
            
        }catch(SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
