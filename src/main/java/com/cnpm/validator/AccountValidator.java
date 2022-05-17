/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cnpm.validator;

import com.cnpm.pojos.Account;
import com.cnpm.repository.AccountRepository;
import com.cnpm.services.AccountService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;

import org.springframework.validation.Validator;

/**
 *
 * @author ADMIN
 */
@Component
public class AccountValidator implements Validator {

    @Autowired
    private AccountService userDetailsService;

    @Override
    public boolean supports(Class<?> type) {
        return Account.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Account acc = (Account) o;
        if(acc.getUser().contains("nvdl")){
            errors.rejectValue("user", "Validator.Account.user");
        }
    }

}
