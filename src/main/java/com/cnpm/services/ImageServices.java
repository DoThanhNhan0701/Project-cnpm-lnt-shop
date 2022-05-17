package com.cnpm.services;

import com.cnpm.pojos.Images;

import java.util.List;

public interface ImageServices {
    List<Images> getlist(int id);
    boolean addImg(Images images);
    boolean updateImg(Images images);
    boolean deleteImg(int id);
}
