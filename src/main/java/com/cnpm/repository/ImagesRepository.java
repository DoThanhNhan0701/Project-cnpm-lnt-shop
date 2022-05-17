package com.cnpm.repository;

import com.cnpm.pojos.Images;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface ImagesRepository {
    List<Images> getlist(int id);
    boolean addImg(Images images);
    boolean updateImg(Images images);
    boolean deleteImg(int id);
}
