package um;

import Lm.p;
import Lm.x;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Repeatable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
@p
@x(qualifier = InterfaceC15655h.class)
@Documented
@Repeatable(InterfaceC2050a.class)
@Retention(RetentionPolicy.RUNTIME)
public @interface InterfaceC15648a {

    @Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
    @p
    @x(qualifier = InterfaceC15655h.class)
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    public @interface InterfaceC2050a {
        InterfaceC15648a[] value();
    }

    String[] value();
}
