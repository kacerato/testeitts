package Em;

import Lm.F;
import Lm.InterfaceC2808h;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE_USE, ElementType.TYPE_PARAMETER})
@InterfaceC2808h
@F({})
@Retention(RetentionPolicy.RUNTIME)
public @interface b {
    String[] value() default {};
}
