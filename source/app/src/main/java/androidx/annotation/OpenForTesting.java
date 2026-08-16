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

@Target({ElementType.TYPE, ElementType.METHOD})
@e(EnumC14501a.BINARY)
@f(allowedTargets = {b.FUNCTION, b.PROPERTY_GETTER, b.PROPERTY_SETTER, b.CLASS})
@Documented
@Retention(RetentionPolicy.CLASS)
@c
public @interface OpenForTesting {
}
