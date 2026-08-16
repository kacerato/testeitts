package Fm;

import Lm.F;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE_USE, ElementType.TYPE_PARAMETER})
@F({m.class})
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface i {
    String[] className();

    String[] methodName();

    int[] params();
}
