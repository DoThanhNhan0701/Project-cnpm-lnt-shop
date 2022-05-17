/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cnpm.validator;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.validation.Constraint;
import javax.validation.Payload;



/**
 *
 * @author ADMIN
 */

@java.lang.annotation.Target(value = {ElementType.FIELD, ElementType.METHOD})
@Retention(value = RetentionPolicy.RUNTIME)
@Constraint(validatedBy = UsernameAccountValidator.class)
@Documented
public @interface UsernameAccount {
    String message() default "ten tai khoang da duoc dung";
    Class<?>[] groups() default {};
    public abstract Class<? extends Payload>[] payload() default {};
}
