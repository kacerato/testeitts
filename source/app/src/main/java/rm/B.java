package rm;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE_USE, ElementType.TYPE_PARAMETER})
@Lm.F({q.class})
@Documented
@Retention(RetentionPolicy.RUNTIME)
@Lm.G({Lm.I.EXPLICIT_LOWER_BOUND, Lm.I.EXPLICIT_UPPER_BOUND})
public @interface B {
}
