package androidx.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.EnumC14501a;
import of.b;
import of.e;
import of.f;

@Target({ElementType.ANNOTATION_TYPE})
@e(EnumC14501a.SOURCE)
@f(allowedTargets = {b.ANNOTATION_CLASS})
@Retention(RetentionPolicy.SOURCE)
public @interface LongDef {
    boolean flag() default false;

    boolean open() default false;

    long[] value() default {};
}
