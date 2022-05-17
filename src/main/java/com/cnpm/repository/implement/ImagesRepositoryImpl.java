package com.cnpm.repository.implement;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.cnpm.pojos.Images;
import com.cnpm.pojos.MatHang;
import com.cnpm.repository.ImagesRepository;
import com.cnpm.repository.MatHangReponsitory;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Repository
@Transactional
public class ImagesRepositoryImpl implements ImagesRepository {
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private Cloudinary cloudinary;
    @Autowired
    private MatHangReponsitory matHangReponsitory;
    @Override
    public List<Images> getlist(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Images> query = builder.createQuery(Images.class);
        Root root= query.from(Images.class);
        query = query.select(root);
        MatHang matHang = this.matHangReponsitory.getOne(id);
        Predicate predicate = builder.equal(root.get("idMatHang").as(MatHang.class), matHang);
        query = query.where(predicate);

        Query q = (Query) session.createQuery(query);

        return q.getResultList();

    }

    @Override
    public boolean addImg(Images images) {

        try {
            Session session = this.sessionFactory.getObject().getCurrentSession();
            session.save(images);
            Map result = this.cloudinary.uploader().upload(images.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));
            images.setLinkImg((String) result.get("secure_url"));
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean updateImg(Images images) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        session.update(images);
        return true;
    }

    @Override
    public boolean deleteImg(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Images images = session.get(Images.class,id);
        session.delete(images);
        return true;
    }
}
