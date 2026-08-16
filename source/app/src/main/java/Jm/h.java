package Jm;

import Lm.F;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE_PARAMETER, ElementType.TYPE_USE})
@F({s.class})
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface h {
    long from() default Long.MIN_VALUE;

    long to() default Long.MAX_VALUE;
}
