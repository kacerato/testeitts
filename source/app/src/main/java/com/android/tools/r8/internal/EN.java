package com.android.tools.r8.internal;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.CONSTRUCTOR})
@Retention(RetentionPolicy.CLASS)
public @interface EN {
    LM[] bindings() default {};

    InterfaceC10418yP[] consequences();

    InterfaceC6411aN[] preconditions() default {};
}
