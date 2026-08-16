package androidx.annotation;

import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.EnumC14501a;
import of.b;
import of.e;
import of.f;

@Target({ElementType.CONSTRUCTOR, ElementType.FIELD, ElementType.LOCAL_VARIABLE, ElementType.METHOD, ElementType.PACKAGE, ElementType.TYPE})
@e(EnumC14501a.BINARY)
@f(allowedTargets = {b.CLASS, b.PROPERTY, b.LOCAL_VARIABLE, b.VALUE_PARAMETER, b.CONSTRUCTOR, b.FUNCTION, b.PROPERTY_GETTER, b.PROPERTY_SETTER, b.FILE, b.TYPEALIAS})
@Retention(RetentionPolicy.CLASS)
public @interface OptIn {
    Class<? extends Annotation>[] markerClass();
}
