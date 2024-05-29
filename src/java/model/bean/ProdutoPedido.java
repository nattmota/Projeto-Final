package model.bean;

public class ProdutoPedido {
    private int idProdutoPedido;
    private int idPedido;
    private int idProduto;
    private int quantidade;
    private String nome;
    private float valor;
    private byte[] imagemBytes;
    private String imagemBase64; 
    private float subtotal;
    private float total;

    public ProdutoPedido() {
    }

    public ProdutoPedido(int idProdutoPedido, int idPedido, int idProduto, int quantidade, String nome, float valor, byte[] imagemBytes, String imagemBase64, float subtotal, float total) {
        this.idProdutoPedido = idProdutoPedido;
        this.idPedido = idPedido;
        this.idProduto = idProduto;
        this.quantidade = quantidade;
        this.nome = nome;
        this.valor = valor;
        this.imagemBytes = imagemBytes;
        this.imagemBase64 = imagemBase64;
        this.subtotal = subtotal;
        this.total = total;
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

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    public byte[] getImagemBytes() {
        return imagemBytes;
    }

    public void setImagemBytes(byte[] imagemBytes) {
        this.imagemBytes = imagemBytes;
    }

    public String getImagemBase64() {
        return imagemBase64;
    }

    public void setImagemBase64(String imagemBase64) {
        this.imagemBase64 = imagemBase64;
    }

    public float getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(float subtotal) {
        this.subtotal = subtotal;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    
    
}
