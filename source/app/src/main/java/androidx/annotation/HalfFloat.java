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

@Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE})
@e(EnumC14501a.SOURCE)
@f(allowedTargets = {b.VALUE_PARAMETER, b.FUNCTION, b.PROPERTY_GETTER, b.PROPERTY_SETTER, b.LOCAL_VARIABLE, b.FIELD})
@Documented
@Retention(RetentionPolicy.SOURCE)
@c
public @interface HalfFloat {
}
