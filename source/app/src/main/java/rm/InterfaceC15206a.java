package rm;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Repeatable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
@Lm.p
@Lm.x(qualifier = InterfaceC15214i.class)
@Documented
@Repeatable(InterfaceC2000a.class)
@Retention(RetentionPolicy.RUNTIME)
public @interface InterfaceC15206a {

    @Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
    @Lm.p
    @Lm.x(qualifier = InterfaceC15214i.class)
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    public @interface InterfaceC2000a {
        InterfaceC15206a[] value();
    }

    @Lm.A("offset")
    @Lm.r
    String[] offset() default {};

    @Lm.A("value")
    @Lm.r
    String[] targetValue();

    @Lm.r
    String[] value();
}
