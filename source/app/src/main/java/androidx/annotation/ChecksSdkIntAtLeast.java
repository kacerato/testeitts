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

@Target({ElementType.FIELD, ElementType.METHOD})
@e(EnumC14501a.BINARY)
@f(allowedTargets = {b.FUNCTION, b.PROPERTY_GETTER, b.PROPERTY_SETTER, b.FIELD})
@Documented
@Retention(RetentionPolicy.CLASS)
@c
public @interface ChecksSdkIntAtLeast {
    int api() default -1;

    String codename() default "";

    int extension() default 0;

    int lambda() default -1;

    int parameter() default -1;
}
