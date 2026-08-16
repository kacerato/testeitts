package nf;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.EnumC14501a;

@Target({ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.CONSTRUCTOR})
@of.e(EnumC14501a.BINARY)
@of.f(allowedTargets = {of.b.CLASS, of.b.PROPERTY, of.b.FIELD, of.b.CONSTRUCTOR, of.b.FUNCTION, of.b.PROPERTY_GETTER, of.b.PROPERTY_SETTER, of.b.TYPEALIAS})
@Documented
@Retention(RetentionPolicy.CLASS)
@of.c
public @interface InterfaceC14422l0 {
    String version();
}
