package androidx.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import nf.InterfaceC14427o;
import of.EnumC14501a;
import of.b;
import of.e;
import of.f;

@Target({ElementType.METHOD})
@e(EnumC14501a.SOURCE)
@InterfaceC14427o(message = "Replaced by the androidx.resourceinpsection package.")
@f(allowedTargets = {b.FUNCTION, b.PROPERTY_GETTER, b.PROPERTY_SETTER})
@Retention(RetentionPolicy.SOURCE)
public @interface InspectableProperty {

    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE})
    @e(EnumC14501a.SOURCE)
    @f(allowedTargets = {b.ANNOTATION_CLASS, b.CLASS})
    @Retention(RetentionPolicy.SOURCE)
    public @interface EnumEntry {
        String name();

        int value();
    }

    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE})
    @e(EnumC14501a.SOURCE)
    @f(allowedTargets = {b.ANNOTATION_CLASS, b.CLASS})
    @Retention(RetentionPolicy.SOURCE)
    public @interface FlagEntry {
        int mask() default 0;

        String name();

        int target();
    }

    public enum ValueType {
        NONE,
        INFERRED,
        INT_ENUM,
        INT_FLAG,
        COLOR,
        GRAVITY,
        RESOURCE_ID
    }

    int attributeId() default 0;

    EnumEntry[] enumMapping() default {};

    FlagEntry[] flagMapping() default {};

    boolean hasAttributeId() default true;

    String name() default "";

    ValueType valueType() default ValueType.INFERRED;
}
