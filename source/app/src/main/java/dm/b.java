package Dm;

import Lm.F;
import Lm.I;
import Lm.InterfaceC2805e;
import Lm.InterfaceC2808h;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE_PARAMETER, ElementType.TYPE_USE})
@InterfaceC2805e(types = {Void.class}, value = {I.UPPER_BOUND, I.LOWER_BOUND})
@InterfaceC2808h
@F({})
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface b {
}
