package com.android.tools.r8.internal;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.CONSTRUCTOR})
@Retention(RetentionPolicy.CLASS)
public @interface InterfaceC8170kw0 {
    EnumC9412sN[] constraintAdditions() default {};

    EnumC9412sN[] constraints() default {};

    String description() default "";

    EO kind() default EO.DEFAULT;

    GV[] memberAccess() default {};

    InterfaceC6411aN[] preconditions() default {};
}
