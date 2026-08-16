package Dm;

import Lm.F;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE_USE})
@F({d.class})
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface a {
}
