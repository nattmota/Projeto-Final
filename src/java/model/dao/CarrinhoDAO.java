package model.dao;

import conexao.Conexao;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import model.bean.Carrinho;
import model.bean.Produto;
import model.bean.Usuario;

public class CarrinhoDAO {

    public boolean adicionarCarrinho(Carrinho carrinho) {
        try {
            Connection conexao = Conexao.conectar();

            PreparedStatement stmt = conexao.prepareStatement("INSERT INTO carrinho (produto_id, quantidade, usuario_id) VALUES (?,?,?) ");
            stmt.setInt(1, carrinho.getIdProduto());
            stmt.setInt(2, carrinho.getQuantidade());
            stmt.setInt(3, Usuario.getIdUsuarioStatic());
            System.out.println("Id Usuario: " + Usuario.getIdUsuarioStatic());
            
            stmt.executeUpdate();

            stmt.close();
            conexao.close();
            return true;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Carrinho> visualizarCarrinho() {
        List<Carrinho> listaCarrinho = new ArrayList();
        try {
            Connection conexao = Conexao.conectar();

            PreparedStatement stmt = conexao.prepareStatement("SELECT p.imagem, p.nome, c.quantidade, p.valor, (c.quantidade * p.valor) AS subtotal, p.idProduto "
                    + "FROM carrinho c "
                    + "JOIN produto p ON c.produto_id = p.idProduto "
                    + "WHERE c.usuario_id = ?");

            stmt.setInt(1, Usuario.getIdUsuarioStatic());

            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                Carrinho carrinho = new Carrinho();
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
}
