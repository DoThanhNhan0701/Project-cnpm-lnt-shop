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
@Table(name="nhabanhang")
public class NhaBanHang implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="IDBanHang")
    private int idBanHang;
    @Column(name="TenNBH")
    private String tenNBH;
    @Column(name="DiaChi")
    private String diaChi;
    @Column(name="Logo")
    private String logo;

    public int getIdBanHang() {
        return idBanHang;
    }

    public void setIdBanHang(int idBanHang) {
        this.idBanHang = idBanHang;
    }

    public String getTenNBH() {
        return tenNBH;
    }

    public void setTenNBH(String tenNBH) {
        this.tenNBH = tenNBH;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public NhaBanHang(int idBanHang, String tenNBH, String diaChi, String logo) {
        this.idBanHang = idBanHang;
        this.tenNBH = tenNBH;
        this.diaChi = diaChi;
        this.logo = logo;
    }

    public NhaBanHang(String tenNBH, String diaChi, String logo) {
        this.tenNBH = tenNBH;
        this.diaChi = diaChi;
        this.logo = logo;
    }

    public NhaBanHang() {
    }
}
