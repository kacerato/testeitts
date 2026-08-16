package tm;

import Lm.B;
import Lm.F;
import Lm.H;
import Lm.InterfaceC2805e;
import Lm.s;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE_USE, ElementType.TYPE_PARAMETER})
@InterfaceC2805e(typeKinds = {H.BOOLEAN, H.BYTE, H.CHAR, H.DOUBLE, H.FLOAT, H.INT, H.LONG, H.SHORT})
@B({s.PRIMITIVE, s.STRING})
@F({h.class})
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface e {
}
