package model.bean;

public class UsuarioPagamento {
    private int idUsuarioPagamento;
    private int idUsuario;
    private int idTipoPagamento;

    public UsuarioPagamento() {
    }

    public UsuarioPagamento(int idUsuarioPagamento, int idUsuario, int idTipoPagamento) {
        this.idUsuarioPagamento = idUsuarioPagamento;
        this.idUsuario = idUsuario;
        this.idTipoPagamento = idTipoPagamento;
    }

    public int getIdUsuarioPagamento() {
        return idUsuarioPagamento;
    }

    public void setIdUsuarioPagamento(int idUsuarioPagamento) {
        this.idUsuarioPagamento = idUsuarioPagamento;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdTipoPagamento() {
        return idTipoPagamento;
    }

    public void setIdTipoPagamento(int idTipoPagamento) {
        this.idTipoPagamento = idTipoPagamento;
    }
    
    
}
