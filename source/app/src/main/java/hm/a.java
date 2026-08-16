package Hm;

import Lm.F;
import Lm.G;
import Lm.I;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;

@Target({ElementType.TYPE_USE, ElementType.TYPE_PARAMETER})
@F({})
@Documented
@G({I.EXPLICIT_LOWER_BOUND, I.EXPLICIT_UPPER_BOUND})
public @interface a {
}
