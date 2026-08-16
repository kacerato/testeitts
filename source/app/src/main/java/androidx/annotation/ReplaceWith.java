package androidx.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.b;
import of.f;

@Target({ElementType.FIELD, ElementType.METHOD, ElementType.CONSTRUCTOR})
@Retention(RetentionPolicy.RUNTIME)
@f(allowedTargets = {b.FUNCTION, b.FIELD, b.CONSTRUCTOR})
public @interface ReplaceWith {
    String expression();

    String[] imports() default {};
}
