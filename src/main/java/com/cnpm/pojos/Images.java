package com.cnpm.pojos;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.awt.image.ImageProducer;
import java.io.Serializable;
@Entity
@Table(name="images")
public class Images implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idImg;
    private String linkImg;
    @JoinColumn(name= "idMatHang")
    @ManyToOne
    private MatHang matHang;
    @Transient
    private MultipartFile file;
    public Images() {
    }

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }

    public MatHang getMatHang() {
        return matHang;
    }

    public void setMatHang(MatHang matHang) {
        this.matHang = matHang;
    }

    public Images(int idImg, String linkImg){
        this.idImg=idImg;
        this.linkImg=linkImg;
    }

    public Images(String linkImg) {
        this.linkImg = linkImg;
    }

    public int getIdImg() {
        return idImg;
    }

    public void setIdImg(int idImg) {
        this.idImg = idImg;
    }

    public String getLinkImg() {
        return linkImg;
    }

    public void setLinkImg(String linkImg) {
        this.linkImg = linkImg;
    }
}
