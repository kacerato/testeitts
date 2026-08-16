package rm;

import Lm.InterfaceC2803c;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Repeatable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
@InterfaceC2803c(qualifier = InterfaceC15214i.class)
@Lm.p
@Documented
@Repeatable(a.class)
@Retention(RetentionPolicy.RUNTIME)
public @interface InterfaceC15207b {

    @Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
    @InterfaceC2803c(qualifier = InterfaceC15214i.class)
    @Lm.p
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    public @interface a {
        InterfaceC15207b[] value();
    }

    String[] expression();

    @Lm.A("offset")
    @Lm.r
    String[] offset() default {};

    boolean result();

    @Lm.A("value")
    @Lm.r
    String[] targetValue();
}
