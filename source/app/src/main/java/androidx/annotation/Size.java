package androidx.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.EnumC14501a;
import of.b;
import of.c;
import of.e;
import of.f;

@Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.ANNOTATION_TYPE})
@e(EnumC14501a.BINARY)
@f(allowedTargets = {b.VALUE_PARAMETER, b.LOCAL_VARIABLE, b.FUNCTION, b.PROPERTY_GETTER, b.PROPERTY_SETTER, b.FIELD, b.ANNOTATION_CLASS})
@Documented
@Retention(RetentionPolicy.CLASS)
@c
public @interface Size {
    long max() default Long.MAX_VALUE;

    long min() default Long.MIN_VALUE;

    long multiple() default 1;

    long value() default -1;
}
