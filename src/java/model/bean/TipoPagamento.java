package model.bean;

public class TipoPagamento {
    private int idPagamento;
    private String metodo;

    public TipoPagamento() {
    }

    public TipoPagamento(int idPagamento, String metodo) {
        this.idPagamento = idPagamento;
        this.metodo = metodo;
    }

    public int getIdPagamento() {
        return idPagamento;
    }

    public void setIdPagamento(int idPagamento) {
        this.idPagamento = idPagamento;
    }

    public String getMetodo() {
        return metodo;
    }

    public void setMetodo(String metodo) {
        this.metodo = metodo;
    }
    
    
}
