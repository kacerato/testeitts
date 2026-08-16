package vm;

import Lm.InterfaceC2803c;
import Lm.p;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Repeatable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
@InterfaceC2803c(qualifier = i.class)
@p
@Documented
@Repeatable(a.class)
@Retention(RetentionPolicy.RUNTIME)
public @interface InterfaceC15867e {

    @Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
    @InterfaceC2803c(qualifier = i.class)
    @p
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    public @interface a {
        InterfaceC15867e[] value();
    }

    String[] expression();

    boolean result();
}
