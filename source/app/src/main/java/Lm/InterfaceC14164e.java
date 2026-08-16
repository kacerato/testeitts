package lm;

import Lm.A;
import Lm.InterfaceC2803c;
import Lm.p;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Repeatable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
@InterfaceC2803c(qualifier = InterfaceC14160a.class)
@p
@Documented
@Repeatable(a.class)
@Retention(RetentionPolicy.RUNTIME)
public @interface InterfaceC14164e {

    @Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
    @InterfaceC2803c(qualifier = InterfaceC14160a.class)
    @p
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    public @interface a {
        InterfaceC14164e[] value();
    }

    String[] expression();

    @A("value")
    String[] methods();

    boolean result();
}
