/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cnpm.pojos;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author ADMIN
 */
@Entity
@Table(name="danhgia")
public class DanhGia implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="IDPhanHoi")
    private int idPhanHoi;
    @Column(name="IDKhachHang")
    private int idKhachHang;
    @Column(name="IDMatHang")
    private int idMatHang;
    @Column(name="BinhLuan")
    private String binhLuan;
    @Column(name="ChatLuong")
    private float chatLuong;

    public DanhGia() {
    }

    public DanhGia(int idKhachHang, int idMatHang, String binhLuan, float chatLuong) {
        this.idKhachHang = idKhachHang;
        this.idMatHang = idMatHang;
        this.binhLuan = binhLuan;
        this.chatLuong = chatLuong;
    }

    public int getIdPhanHoi() {
        return idPhanHoi;
    }

    public void setIdPhanHoi(int idPhanHoi) {
        this.idPhanHoi = idPhanHoi;
    }

    public int getIdKhachHang() {
        return idKhachHang;
    }

    public void setIdKhachHang(int idKhachHang) {
        this.idKhachHang = idKhachHang;
    }

    public int getIdMatHang() {
        return idMatHang;
    }

    public void setIdMatHang(int idMatHang) {
        this.idMatHang = idMatHang;
    }

    public String getBinhLuan() {
        return binhLuan;
    }

    public void setBinhLuan(String binhLuan) {
        this.binhLuan = binhLuan;
    }

    public float getChatLuong() {
        return chatLuong;
    }

    public void setChatLuong(float chatLuong) {
        this.chatLuong = chatLuong;
    }
    
}
