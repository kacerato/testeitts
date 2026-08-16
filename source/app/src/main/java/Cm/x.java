package Cm;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE_USE, ElementType.TYPE_PARAMETER})
@Lm.F({InterfaceC2428j.class})
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface x {
    EnumC2431m value() default EnumC2431m.one;
}
