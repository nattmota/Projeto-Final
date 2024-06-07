package model.dao;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.TipoPagamento;

public class TipoPagamentoDAO {
    public List<TipoPagamento> listarTodos() {
        List<TipoPagamento> tiposPagamento = new ArrayList();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM tipo_pagamento");

            rs = stmt.executeQuery();

            while (rs.next()) {
                TipoPagamento tipoPagamento = new TipoPagamento();
                tipoPagamento.setIdPagamento(rs.getInt("idPagamento"));
                tipoPagamento.setMetodo(rs.getString("metodo"));
                tiposPagamento.add(tipoPagamento);

            }
            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();

        }
        return tiposPagamento;
    }
}
