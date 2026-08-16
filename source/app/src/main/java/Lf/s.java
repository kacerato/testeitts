package Lf;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.EnumC14501a;

@Target({ElementType.TYPE})
@of.e(EnumC14501a.RUNTIME)
@of.f(allowedTargets = {of.b.CLASS})
@Documented
@Retention(RetentionPolicy.RUNTIME)
@of.c
public @interface s {
    String value();
}
