package com.android.tools.r8.internal;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.CONSTRUCTOR})
@Retention(RetentionPolicy.CLASS)
public @interface AO {
    InterfaceC10418yP[] additionalTargets() default {};

    String fieldName() default "";

    EO kind() default EO.DEFAULT;

    GV[] memberAccess() default {};

    String methodName() default "";
}
