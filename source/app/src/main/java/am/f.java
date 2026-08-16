package Am;

import Lm.B;
import Lm.F;
import Lm.s;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE_USE, ElementType.TYPE_PARAMETER})
@B({s.INT, s.LONG, s.CHAR})
@F({h.class, b.class})
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface f {
}
