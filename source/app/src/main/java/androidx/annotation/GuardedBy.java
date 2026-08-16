package androidx.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.EnumC14501a;
import of.b;
import of.e;
import of.f;

@Target({ElementType.FIELD, ElementType.METHOD})
@e(EnumC14501a.BINARY)
@f(allowedTargets = {b.FIELD, b.FUNCTION, b.PROPERTY_GETTER, b.PROPERTY_SETTER})
@Retention(RetentionPolicy.CLASS)
public @interface GuardedBy {
    String value();
}
