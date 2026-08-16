package com.android.tools.r8.internal;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.CONSTRUCTOR})
@Retention(RetentionPolicy.CLASS)
public @interface InterfaceC8003jw0 {
    K2[] constrainAnnotations() default {};

    String description() default "";

    EO kind() default EO.DEFAULT;

    InterfaceC6411aN[] preconditions() default {};
}
