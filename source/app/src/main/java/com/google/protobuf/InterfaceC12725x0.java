package com.google.protobuf;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
@Documented
public @interface InterfaceC12725x0 {
    String[] imports() default {};

    String replacement();

    String[] staticImports() default {};
}
