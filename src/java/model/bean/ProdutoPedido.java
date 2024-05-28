package model.bean;

public class ProdutoPedido {
    private int idProdutoPedido;
    private int idPedido;
    private int idProduto;
    private int quantidade;

    public ProdutoPedido() {
    }

    public ProdutoPedido(int idProdutoPedido, int idPedido, int idProduto, int quantidade) {
        this.idProdutoPedido = idProdutoPedido;
        this.idPedido = idPedido;
        this.idProduto = idProduto;
        this.quantidade = quantidade;
    }

    public int getIdProdutoPedido() {
        return idProdutoPedido;
    }

    public void setIdProdutoPedido(int idProdutoPedido) {
        this.idProdutoPedido = idProdutoPedido;
    }

    public int getIdPedido() {
        return idPedido;
    }

    public void setIdPedido(int idPedido) {
        this.idPedido = idPedido;
    }

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }
    
    
}
