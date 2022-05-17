


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cnpm.services;

import com.cnpm.pojos.NhomSanPham;

import java.util.List;



/**
 *
 * @author ADMIN
 */

public interface NhomSanPhamService {
    boolean add(NhomSanPham NSP);
    List<NhomSanPham> getNSP();
    boolean delete(int id);

    NhomSanPham getNhomSanPham(int id);
}
