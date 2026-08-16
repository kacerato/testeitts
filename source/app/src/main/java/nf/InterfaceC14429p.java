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
@InterfaceC14422l0(version = "1.4")
@of.c
public @interface InterfaceC14429p {
    String errorSince() default "";

    String hiddenSince() default "";

    String warningSince() default "";
}
