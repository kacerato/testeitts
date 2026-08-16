package Lf;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.EnumC14501a;

@Target({ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR})
@of.e(EnumC14501a.SOURCE)
@of.f(allowedTargets = {of.b.FUNCTION, of.b.CONSTRUCTOR, of.b.PROPERTY_GETTER, of.b.PROPERTY_SETTER, of.b.CLASS})
@Documented
@Retention(RetentionPolicy.SOURCE)
@of.c
public @interface t {
}
