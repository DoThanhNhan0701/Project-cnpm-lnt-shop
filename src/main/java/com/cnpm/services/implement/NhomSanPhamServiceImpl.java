/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cnpm.services.implement;

import com.cnpm.pojos.NhomSanPham;
import com.cnpm.repository.NhomSanPhamRepository;
import com.cnpm.services.NhomSanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *
 * @author ADMIN
 */
@Service
public class NhomSanPhamServiceImpl implements NhomSanPhamService{
    
    @Autowired
    private NhomSanPhamRepository nhomSanPhamReponsitory;
    
    @Override
    public boolean add(NhomSanPham NSP) {
        return this.nhomSanPhamReponsitory.add(NSP);
    }

    @Override
    public List<NhomSanPham> getNSP() {
        return this.nhomSanPhamReponsitory.getNSP();
    }

    @Override
    public boolean delete(int id) {
        return this.nhomSanPhamReponsitory.delete(id);
    }

    @Override
    public NhomSanPham getNhomSanPham(int id) {
        return this.nhomSanPhamReponsitory.getNhomSanPham(id);
    }

}
