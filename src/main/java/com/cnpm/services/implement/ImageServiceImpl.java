package com.cnpm.services.implement;

import com.cnpm.pojos.Images;
import com.cnpm.repository.ImagesRepository;
import com.cnpm.services.ImageServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ImageServiceImpl implements ImageServices {
    @Autowired
    private ImagesRepository imagesRepository;
    @Override
    public List<Images> getlist(int id) {
        return this.imagesRepository.getlist(id);
    }

    @Override
    public boolean addImg(Images images) {
        return this.imagesRepository.addImg(images);
    }

    @Override
    public boolean updateImg(Images images) {
        return this.imagesRepository.updateImg(images);
    }

    @Override
    public boolean deleteImg(int id) {
        return this.imagesRepository.deleteImg(id);
    }
}
