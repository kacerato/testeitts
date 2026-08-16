package nm;

import Lm.F;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE_USE, ElementType.TYPE_PARAMETER})
@F({g.class})
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface p {
}
