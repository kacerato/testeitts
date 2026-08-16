package androidx.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.EnumC14501a;
import of.b;
import of.e;
import of.f;

@Target({ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.CONSTRUCTOR, ElementType.ANNOTATION_TYPE})
@e(EnumC14501a.SOURCE)
@f(allowedTargets = {b.CONSTRUCTOR, b.FIELD, b.FUNCTION, b.PROPERTY_GETTER, b.PROPERTY_SETTER, b.VALUE_PARAMETER, b.ANNOTATION_CLASS, b.CLASS})
@Retention(RetentionPolicy.SOURCE)
public @interface Discouraged {
    String message();
}
