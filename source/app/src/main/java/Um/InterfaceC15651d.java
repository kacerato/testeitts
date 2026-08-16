package um;

import Lm.F;
import Lm.H;
import Lm.I;
import Lm.InterfaceC2805e;
import Lm.InterfaceC2808h;
import Lm.K;
import Lm.r;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE_USE, ElementType.TYPE_PARAMETER})
@K(typeKinds = {H.BOOLEAN, H.BYTE, H.CHAR, H.DOUBLE, H.FLOAT, H.INT, H.LONG, H.SHORT}, types = {String.class})
@InterfaceC2808h
@F({InterfaceC15653f.class})
@Retention(RetentionPolicy.RUNTIME)
@InterfaceC2805e(typeKinds = {H.BOOLEAN, H.BYTE, H.CHAR, H.DOUBLE, H.FLOAT, H.INT, H.LONG, H.SHORT}, types = {String.class, Void.class}, value = {I.EXCEPTION_PARAMETER, I.UPPER_BOUND})
@Documented
public @interface InterfaceC15651d {
    @r
    String[] value() default {};
}
