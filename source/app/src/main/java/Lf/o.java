package Lf;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.EnumC14501a;

@Target({ElementType.METHOD})
@of.e(EnumC14501a.RUNTIME)
@of.f(allowedTargets = {of.b.FUNCTION, of.b.PROPERTY, of.b.PROPERTY_GETTER, of.b.PROPERTY_SETTER})
@Documented
@Retention(RetentionPolicy.RUNTIME)
@of.c
public @interface o {
}
