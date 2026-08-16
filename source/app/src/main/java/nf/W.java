package nf;

import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.EnumC14501a;

@Target({ElementType.TYPE, ElementType.METHOD, ElementType.PARAMETER, ElementType.CONSTRUCTOR, ElementType.LOCAL_VARIABLE})
@of.e(EnumC14501a.SOURCE)
@of.f(allowedTargets = {of.b.CLASS, of.b.PROPERTY, of.b.LOCAL_VARIABLE, of.b.VALUE_PARAMETER, of.b.CONSTRUCTOR, of.b.FUNCTION, of.b.PROPERTY_GETTER, of.b.PROPERTY_SETTER, of.b.EXPRESSION, of.b.FILE, of.b.TYPEALIAS})
@Retention(RetentionPolicy.SOURCE)
@InterfaceC14422l0(version = "1.3")
public @interface W {
    Class<? extends Annotation>[] markerClass();
}
