package Jm;

import Lm.A;
import Lm.InterfaceC2803c;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Repeatable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
@InterfaceC2803c(qualifier = n.class)
@Lm.p
@Documented
@Repeatable(a.class)
@Retention(RetentionPolicy.RUNTIME)
public @interface f {

    @Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
    @InterfaceC2803c(qualifier = n.class)
    @Lm.p
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    public @interface a {
        f[] value();
    }

    String[] expression();

    boolean result();

    @A("value")
    int targetValue() default 0;
}
