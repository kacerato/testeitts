package nf;

import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.EnumC14501a;

@Target({ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR})
@of.e(EnumC14501a.BINARY)
@of.f(allowedTargets = {of.b.CLASS, of.b.PROPERTY, of.b.CONSTRUCTOR, of.b.FUNCTION, of.b.TYPEALIAS})
@Retention(RetentionPolicy.CLASS)
public @interface T0 {
    Class<? extends Annotation>[] markerClass();
}
