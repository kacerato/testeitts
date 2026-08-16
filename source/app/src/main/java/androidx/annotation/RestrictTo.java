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

@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD, ElementType.PACKAGE})
@e(EnumC14501a.BINARY)
@f(allowedTargets = {b.ANNOTATION_CLASS, b.CLASS, b.FUNCTION, b.PROPERTY_GETTER, b.PROPERTY_SETTER, b.CONSTRUCTOR, b.FIELD, b.FILE})
@Documented
@Retention(RetentionPolicy.CLASS)
@c
public @interface RestrictTo {

    public enum Scope {
        LIBRARY,
        LIBRARY_GROUP,
        LIBRARY_GROUP_PREFIX,
        GROUP_ID,
        TESTS,
        SUBCLASSES
    }

    Scope[] value();
}
