package com.cnpm.controller;

import com.cnpm.pojos.GioHang;
import com.cnpm.pojos.MatHang;
import com.cnpm.services.GioHangServices;
import com.cnpm.services.MatHangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/cart")
public class CartApiController {
    @Autowired
    private MatHangService matHangService;
    @Autowired
    private GioHangServices gioHangServices;

    @GetMapping("/{idmathang}")
    public ResponseEntity<Integer> cart(@PathVariable(value="idmathang")Integer id){
        MatHang matHang = this.matHangService.getOne(id);
        GioHang gioHang = new GioHang();
        gioHang.setIdMatHang(matHang);
        gioHangServices.add(gioHang);
        return  new ResponseEntity<>(this.gioHangServices.count(), HttpStatus.OK);
    }

    @GetMapping("/delete/{idMatHang}")
    public ResponseEntity<Integer> cartt(@PathVariable(value = "idMatHang")Integer id){
        this.gioHangServices.delete(id);
        return  new ResponseEntity<>(this.gioHangServices.count(), HttpStatus.OK);
    }

    @GetMapping("/add/{idCart}")
    public ResponseEntity<Integer> addCart(@PathVariable(value = "idCart")Integer id){
        this.gioHangServices.addCountCart(id);
        return  new ResponseEntity<>(this.gioHangServices.count(), HttpStatus.OK);
    }

    @GetMapping("/tru/{idCart}")
    public ResponseEntity<Integer> truCart(@PathVariable(value = "idCart")Integer id){
        this.gioHangServices.truCountCart(id);
        return new ResponseEntity<>(this.gioHangServices.count(), HttpStatus.OK);
    }
}
