package com.cnpm.repository;

import com.cnpm.pojos.GioHang;
import com.cnpm.pojos.MatHang;

import java.util.List;

public interface GioHangRepository {
    boolean add(GioHang gioHang);
    boolean update(GioHang gioHang);
    boolean delete(int id);
    List<GioHang> get();
    int count();
    GioHang isEmptyMatHang(MatHang matHang);
    boolean addCountCart(int id);
    boolean truCountCart(int id);
}
