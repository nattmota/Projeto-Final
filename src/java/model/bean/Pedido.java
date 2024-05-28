package model.bean;

import java.util.Date;

public class Pedido {

    private int idPedido;
    private int idUsuario;
    private int idEndereco;
    private Date dataPedido;
    private float valorTotal;
    private String statusPedido;

    public Pedido() {
    }

    public Pedido(int idPedido, int idUsuario, int idEndereco, Date dataPedido, float valorTotal, String statusPedido) {
        this.idPedido = idPedido;
        this.idUsuario = idUsuario;
        this.idEndereco = idEndereco;
        this.dataPedido = dataPedido;
        this.valorTotal = valorTotal;
        this.statusPedido = statusPedido;
    }

    public Pedido(int idUsuario, float valorTotal) {
        this.idUsuario = idUsuario;
        this.valorTotal = valorTotal;
    }

    public int getIdPedido() {
        return idPedido;
    }

    public void setIdPedido(int idPedido) {
        this.idPedido = idPedido;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdEndereco() {
        return idEndereco;
    }

    public void setIdEndereco(int idEndereco) {
        this.idEndereco = idEndereco;
    }

    public Date getDataPedido() {
        return dataPedido;
    }

    public void setDataPedido(Date dataPedido) {
        this.dataPedido = dataPedido;
    }

    public float getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(float valorTotal) {
        this.valorTotal = valorTotal;
    }

    public String getStatusPedido() {
        return statusPedido;
    }

    public void setStatusPedido(String statusPedido) {
        this.statusPedido = statusPedido;
    }
}
