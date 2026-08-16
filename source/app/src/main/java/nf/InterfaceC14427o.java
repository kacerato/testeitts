package nf;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.ANNOTATION_TYPE})
@of.f(allowedTargets = {of.b.CLASS, of.b.FUNCTION, of.b.PROPERTY, of.b.ANNOTATION_CLASS, of.b.CONSTRUCTOR, of.b.PROPERTY_SETTER, of.b.PROPERTY_GETTER, of.b.TYPEALIAS})
@Documented
@Retention(RetentionPolicy.RUNTIME)
@of.c
public @interface InterfaceC14427o {
    EnumC14431q level() default EnumC14431q.WARNING;

    String message();

    InterfaceC14412g0 replaceWith() default @InterfaceC14412g0(expression = "", imports = {});
}
