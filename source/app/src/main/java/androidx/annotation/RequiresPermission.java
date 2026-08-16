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

@Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.CONSTRUCTOR, ElementType.ANNOTATION_TYPE})
@e(EnumC14501a.BINARY)
@f(allowedTargets = {b.ANNOTATION_CLASS, b.FUNCTION, b.PROPERTY_GETTER, b.PROPERTY_SETTER, b.CONSTRUCTOR, b.FIELD, b.VALUE_PARAMETER})
@Documented
@Retention(RetentionPolicy.CLASS)
@c
public @interface RequiresPermission {

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
    @f(allowedTargets = {b.FIELD, b.FUNCTION, b.PROPERTY_GETTER, b.PROPERTY_SETTER, b.VALUE_PARAMETER})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface Read {
        RequiresPermission value() default @RequiresPermission;
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
    @f(allowedTargets = {b.FIELD, b.FUNCTION, b.PROPERTY_GETTER, b.PROPERTY_SETTER, b.VALUE_PARAMETER})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface Write {
        RequiresPermission value() default @RequiresPermission;
    }

    String[] allOf() default {};

    String[] anyOf() default {};

    boolean conditional() default false;

    String value() default "";
}
