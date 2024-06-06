package model.dao;

import conexao.Conexao;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashSet;
import java.util.List;
import model.bean.Carrinho;
import model.bean.Produto;
import model.bean.Usuario;

public class CarrinhoDAO {

    public boolean adicionarCarrinho(Carrinho carrinho) {
        try {
            Connection conexao = Conexao.conectar();
            
            if(produtoJaAddCarrinho(carrinho.getIdProduto(), Usuario.getIdUsuarioStatic())){
                return false;
            }

            PreparedStatement stmt = conexao.prepareStatement("INSERT INTO carrinho (produto_id, quantidade, usuario_id) VALUES (?,?,?) ");
            stmt.setInt(1, carrinho.getIdProduto());
            stmt.setInt(2, carrinho.getQuantidade());
            stmt.setInt(3, Usuario.getIdUsuarioStatic());

            stmt.executeUpdate();

            stmt.close();
            conexao.close();
            return true;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    private boolean produtoJaAddCarrinho(int idProduto, int idUsuario) {

        boolean produtoAdicionado = false;

        try {
            Connection conexao = Conexao.conectar();

            PreparedStatement stmt = conexao.prepareStatement("SELECT COUNT(*) FROM carrinho WHERE produto_id = ? AND usuario_id = ?");
            stmt.setInt(1, idProduto);  
            stmt.setInt(2, idUsuario);

            ResultSet rs = stmt.executeQuery();

            // Se houver pelo menos um registro, significa que o produto já está no carrinho
            if (rs.next() && rs.getInt(1) > 0) {
                produtoAdicionado = true;
            }

            rs.close();
            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return produtoAdicionado; 
    }

    public List<Carrinho> visualizarCarrinho() {
        float total = 0.0f;
        List<Carrinho> listaCarrinho = new ArrayList();
        try {
            Connection conexao = Conexao.conectar();

            PreparedStatement stmt = conexao.prepareStatement("SELECT c.idCarrinho, c.usuario_id, p.imagem, p.nome, c.quantidade, p.valor, (c.quantidade * p.valor) AS subtotal, p.idProduto "
                    + "FROM carrinho c "
                    + "JOIN produto p ON c.produto_id = p.idProduto "
                    + "WHERE c.usuario_id = ?");

            stmt.setInt(1, Usuario.getIdUsuarioStatic());

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Carrinho carrinho = new Carrinho();
                carrinho.setIdCarrinho(rs.getInt("idCarrinho"));
                carrinho.setIdUsuario(Usuario.getIdUsuarioStatic());
                carrinho.setIdProduto(rs.getInt("idProduto"));
                byte[] imagemBytes = rs.getBytes("imagem");
                carrinho.setImagemBytes(imagemBytes);
                if (imagemBytes != null) {
                    String imagemBase64 = Base64.getEncoder().encodeToString(imagemBytes);
                    carrinho.setImagemBase64(imagemBase64);
                }
                carrinho.setNome(rs.getString("nome"));
                carrinho.setQuantidade(rs.getInt("quantidade"));
                carrinho.setValor(rs.getFloat("valor"));
                carrinho.setSubtotal(rs.getFloat("subtotal"));

                total += carrinho.getSubtotal();
                carrinho.setTotal(total);

                listaCarrinho.add(carrinho);
            }

            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaCarrinho;
    }

    public void deletarItemCarrinho(int idCarrinho) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("DELETE FROM carrinho WHERE idCarrinho = ?");
            stmt.setInt(1, idCarrinho);

            stmt.executeUpdate();

            stmt.close();
            conexao.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void esvaizarCarrinho(int idUsuario) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("DELETE FROM carrinho WHERE usuario_id = ?");
            stmt.setInt(1, idUsuario);

            stmt.executeUpdate();

            stmt.close();
            conexao.close();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void atualizarQuantidadeDoProdutoNoCarrinho(int idCarrinho, int qtdAtualizada) {
        try {
            Connection conexao = Conexao.conectar();

            PreparedStatement stmt = conexao.prepareStatement("UPDATE carrinho SET quantidade = ? WHERE idCarrinho = ?");

            stmt.setInt(1, qtdAtualizada);
            stmt.setInt(2, idCarrinho);

            stmt.executeUpdate();

            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
