package Em;

import Lm.A;
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
@x(qualifier = b.class)
@Documented
@Repeatable(InterfaceC0114a.class)
@Retention(RetentionPolicy.RUNTIME)
public @interface a {

    @Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
    @p
    @x(qualifier = b.class)
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    public @interface InterfaceC0114a {
        a[] value();
    }

    @A("value")
    String[] fields();

    String[] value() default {"this"};
}
