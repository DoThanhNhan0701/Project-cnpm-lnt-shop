/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cnpm.validator;

import com.cnpm.services.AccountService;
import com.cnpm.services.implement.AccountServiceImplement;
import javax.persistence.NoResultException;
import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;

/**
 *
 * @author ADMIN
 */
public class UsernameAccountValidator implements ConstraintValidator<UsernameAccount, String>{
    private AccountService userDetailsService =new AccountServiceImplement();

    @Override
    public void initialize(UsernameAccount constraintAnnotation) {
    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        try{
            return this.userDetailsService.checkUsername(value);
        }
        catch(NoResultException e){
            return false;
        }
    }
    
}
