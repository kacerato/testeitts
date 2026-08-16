package Lf;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.EnumC14501a;

@Target({ElementType.TYPE, ElementType.METHOD})
@of.e(EnumC14501a.BINARY)
@of.f(allowedTargets = {of.b.CLASS, of.b.FUNCTION, of.b.PROPERTY, of.b.TYPE})
@Documented
@Retention(RetentionPolicy.CLASS)
@of.c
public @interface p {
    boolean suppress() default true;
}
