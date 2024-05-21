package model.bean;

public class Carrinho {
    private int idCarrinho;
    private int idUsuario;
    private int idProduto;
    private int quantidade;
    private String nome;
    private float valor;
    private byte[] imagemBytes;
    private String imagemBase64; 
    private float subtotal;

    public Carrinho() {
    }

    public Carrinho(int idCarrinho, int idUsuario, int idProduto, int quantidade, String nome, float valor, byte[] imagemBytes, String imagemBase64, float subtotal) {
        this.idCarrinho = idCarrinho;
        this.idUsuario = idUsuario;
        this.idProduto = idProduto;
        this.quantidade = quantidade;
        this.nome = nome;
        this.valor = valor;
        this.imagemBytes = imagemBytes;
        this.imagemBase64 = imagemBase64;
        this.subtotal = subtotal;
    }

    public int getIdCarrinho() {
        return idCarrinho;
    }

    public void setIdCarrinho(int idCarrinho) {
        this.idCarrinho = idCarrinho;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
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
}
