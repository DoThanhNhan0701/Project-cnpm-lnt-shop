/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cnpm.repository.implement;

import com.cnpm.pojos.NhomSanPham;
import com.cnpm.repository.NhomSanPhamRepository;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Query;
import java.util.List;

/**
 *
 * @author ADMIN
 */
@Repository
@Transactional
public class NhomSanPhamReponsitoryImpl implements NhomSanPhamRepository{
    
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public boolean add(NhomSanPham NSP) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try{
            session.save(NSP);
            return true;
        }catch(HibernateException e){
            System.err.println(e.toString());
            return false;
        }
    }

    @Override
    public List<NhomSanPham> getNSP() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("From NhomSanPham");
        return q.getResultList();
    }

    @Override
    public boolean delete(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            NhomSanPham nsp = session.get(NhomSanPham.class, id);
            session.delete(nsp);
            return true;
        } catch (HibernateException e) {
            System.err.println(e.toString());
            return false;
        }
    }

    @Override
    public NhomSanPham getNhomSanPham(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(NhomSanPham.class, id);
    }


}
