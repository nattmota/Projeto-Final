package model.bean;

public class Usuario {
    private int idUsuario;
    private static int idUsuarioStatic;
    private String nome;
    private String email;
    private String senha;
    private String cpf;
    private String telefone;
    private int status;

    public Usuario() {
    }

    public Usuario(int idUsuario, String nome, String email, String senha, String cpf, String telefone, int status) {
        this.idUsuario = idUsuario;
        this.nome = nome;
        this.email = email;
        this.senha = senha;
        this.cpf = cpf;
        this.telefone = telefone;
        this.status = status;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public static int getIdUsuarioStatic() {
        return idUsuarioStatic;
    }

    public static void setIdUsuarioStatic(int idUsuarioStatic) {
        Usuario.idUsuarioStatic = idUsuarioStatic;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    
}
