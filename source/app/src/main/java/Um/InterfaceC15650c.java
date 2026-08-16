package um;

import Lm.F;
import Lm.G;
import Lm.I;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE_USE})
@F({InterfaceC15653f.class})
@Documented
@Retention(RetentionPolicy.RUNTIME)
@G({I.RECEIVER, I.PARAMETER, I.RETURN})
public @interface InterfaceC15650c {
    int value() default -1;
}
