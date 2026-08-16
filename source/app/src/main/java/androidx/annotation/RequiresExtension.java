package androidx.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Repeatable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.jvm.internal.p0;
import of.EnumC14501a;
import of.b;
import of.c;
import of.d;
import of.e;
import of.f;

@Target({ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD, ElementType.PACKAGE})
@Retention(RetentionPolicy.CLASS)
@d
@e(EnumC14501a.BINARY)
@f(allowedTargets = {b.ANNOTATION_CLASS, b.CLASS, b.FUNCTION, b.PROPERTY_GETTER, b.PROPERTY_SETTER, b.CONSTRUCTOR, b.FIELD, b.FILE})
@Documented
@Repeatable(Container.class)
@c
public @interface RequiresExtension {

    @Target({ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.ANNOTATION_TYPE})
    @e(EnumC14501a.BINARY)
    @f(allowedTargets = {b.ANNOTATION_CLASS, b.CLASS, b.FUNCTION, b.PROPERTY_GETTER, b.PROPERTY_SETTER, b.CONSTRUCTOR, b.FIELD, b.FILE})
    @p0
    @Retention(RetentionPolicy.CLASS)
    public @interface Container {
        RequiresExtension[] value();
    }

    int extension();

    int version();
}
