package sm;

import Lm.F;
import Lm.I;
import Lm.InterfaceC2805e;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE_USE, ElementType.TYPE_PARAMETER})
@InterfaceC2805e({I.LOCAL_VARIABLE, I.RESOURCE_VARIABLE})
@F({})
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface e {
    Class<?> value() default Object.class;
}
