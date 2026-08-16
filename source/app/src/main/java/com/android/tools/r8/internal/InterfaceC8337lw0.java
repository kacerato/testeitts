package com.android.tools.r8.internal;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.CONSTRUCTOR})
@Retention(RetentionPolicy.CLASS)
public @interface InterfaceC8337lw0 {
    InterfaceC6411aN[] additionalPreconditions() default {};

    String description() default "";

    InterfaceC10418yP[] value();
}
