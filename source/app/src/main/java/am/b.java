package Am;

import Lm.F;
import Lm.H;
import Lm.InterfaceC2805e;
import Lm.K;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE_USE, ElementType.TYPE_PARAMETER})
@InterfaceC2805e(typeKinds = {H.BYTE, H.INT, H.LONG, H.SHORT, H.FLOAT, H.DOUBLE}, types = {Byte.class, Integer.class, Long.class, Short.class, Float.class, Double.class})
@K(typeKinds = {H.FLOAT, H.DOUBLE}, types = {Float.class, Double.class})
@F({g.class})
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface b {
}
