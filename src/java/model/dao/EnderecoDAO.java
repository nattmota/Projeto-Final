package model.dao;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.Endereco;
import model.bean.Usuario;

public class EnderecoDAO {
    public boolean inserirEndereco(Endereco endereco) {
        try {
            int idUsuarioStatic = Usuario.getIdUsuarioStatic();
            System.out.println("ID do usuário estático recebido: " + idUsuarioStatic); // Adiciona este log
            
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = conexao.prepareStatement("INSERT INTO endereco (estado, cidade, cep, rua, numero, complemento, id_usuario) VALUES (?,?,?,?,?,?,?)");
            
            stmt.setString(1, endereco.getEstado());
            stmt.setString(2, endereco.getCidade());
            stmt.setString(3, endereco.getCep());
            stmt.setString(4, endereco.getRua());
            stmt.setString(5, endereco.getNumero());
            stmt.setString(6, endereco.getComplemento());
            stmt.setInt(7, Usuario.getIdUsuarioStatic());
            
            System.out.println("IdUsuario: " + Usuario.getIdUsuarioStatic());
            
            int linhasAfetadas = stmt.executeUpdate();
            
            return linhasAfetadas > 0;
            
        }catch(SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public List<Endereco> ListarInfoEnderecoUsuario() {
        List<Endereco> enderecoUsuario = new ArrayList();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = conexao.prepareStatement("SELECT rua, numero, complemento, cep FROM endereco WHERE id_usuario = ?");
            
            stmt.setInt(1, Usuario.getIdUsuarioStatic());
            
            ResultSet rs = stmt.executeQuery();
            
            while(rs.next()) {
                Endereco endereco = new Endereco();
                endereco.setRua(rs.getString("rua"));
                endereco.setNumero(rs.getString("numero"));
                endereco.setComplemento(rs.getString("complemento"));
                endereco.setCep(rs.getString("cep"));
                enderecoUsuario.add(endereco);
            }
            
            rs.close();
            stmt.close();
            conexao.close();
            
        }catch(SQLException e) {
            e.printStackTrace();        
        }
        return enderecoUsuario;
    }
}
