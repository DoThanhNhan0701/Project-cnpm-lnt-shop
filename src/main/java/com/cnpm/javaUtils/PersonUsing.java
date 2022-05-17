package com.cnpm.javaUtils;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.GetMapping;

public class PersonUsing {
    public static String getUser(){
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal(); //lấy thông tin người dùng
        String username;
        if (principal instanceof UserDetails) {
            username = ((UserDetails)principal).getUsername();
        } else {
            username = principal.toString();
        }
       return username;
    }
}
