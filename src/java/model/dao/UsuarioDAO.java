package model.dao;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.Usuario;

public class UsuarioDAO {
    public Usuario login(Usuario u) {
        Usuario usuarioValido = new Usuario();
        try {
            Connection conn = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conn.prepareStatement("SELECT * FROM usuario WHERE email = ? AND senha = ?");
            stmt.setString(1, u.getEmail());
            stmt.setString(2, u.getSenha());
            rs = stmt.executeQuery();

            if (rs.next()) {
                usuarioValido.setIdUsuario(rs.getInt("idUsuario"));
                usuarioValido.setEmail(rs.getString("email"));
                usuarioValido.setSenha(rs.getString("senha"));
                Usuario.setIdUsuarioStatic(rs.getInt("idUsuario"));

            }
            rs.close();
            stmt.close();
            conn.close();

        } catch (SQLException ex) {
            ex.printStackTrace();
            usuarioValido.setIdUsuario(0);
            usuarioValido.setEmail("");
            usuarioValido.setSenha("");
        }
        return usuarioValido;
    }

    public boolean verificarUsuario(Usuario u) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM usuario WHERE nome = ?");
            stmt.setString(1, u.getNome());
            rs = stmt.executeQuery();

            if (rs.next()) {
                rs.close();
                stmt.close();
                conexao.close();
                return true;

            } else {
                rs.close();
                stmt.close();
                conexao.close();
                return false;
            }

        } catch (SQLException ex) {
            System.out.println("Erro: " + ex);
            return false;
        }
    }

    public boolean cadastro(Usuario u) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("INSERT INTO usuario (nome, senha, email, cpf, telefone) VALUES (?, ?, ?, ?, ?)");
            stmt.setString(1, u.getNome());
            stmt.setString(2, u.getSenha());
            stmt.setString(3, u.getEmail());
            stmt.setString(4, u.getCpf());
            stmt.setString(5, u.getTelefone());

            stmt.executeUpdate();

            stmt.close();
            conexao.close();
            return true;
        } catch (SQLException ex) {
            System.out.println("Erro: " + ex);
            return false;   
        }
    }

    public void delete(Usuario u) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("DELETE FROM usuario WHERE idUsuario = ?");
            stmt.setInt(1, u.getIdUsuario());

            stmt.executeUpdate();

            stmt.close();
            conexao.close();
        } catch (SQLException ex) {
            System.out.println("Erro: " + ex);
        }
    }

    public boolean update(Usuario u) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("UPDATE usuario SET nome = ?, senha = ?, email = ?, cpf = ?, telefone = ? WHERE idUsuario = ? ");

            stmt.setString(1, u.getNome());
            stmt.setString(2, u.getSenha());
            stmt.setString(3, u.getEmail());
            stmt.setString(4, u.getCpf());
            stmt.setString(5, u.getTelefone());

            stmt.executeUpdate();

            stmt.close();
            conexao.close();

            return true;

        } catch (SQLException ex) {
            System.out.println("Erro: " + ex);
            return false;
        }
    }
    
    public List<Usuario> listarInformacoesUsuario() {
        List<Usuario> infoUsuario = new ArrayList();
        try{
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = conexao.prepareStatement("SELECT nome,email,telefone FROM usuario WHERE idUsuario = ?");
            stmt.setInt(1, Usuario.getIdUsuarioStatic());
            
            ResultSet rs = stmt.executeQuery();
            
            while(rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setNome(rs.getString("nome"));
                usuario.setEmail(rs.getString("email"));
                usuario.setTelefone(rs.getString("telefone"));
                infoUsuario.add(usuario);
            }
            
            rs.close();
            stmt.close();
            conexao.close();
            
        }catch(SQLException e) {
            e.printStackTrace();
        }
        return infoUsuario;
    }
}
