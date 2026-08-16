package Lm;

import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Repeatable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
@p
@Documented
@Repeatable(a.class)
@Retention(RetentionPolicy.RUNTIME)
public @interface InterfaceC2809i {

    @Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
    @p
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    public @interface a {
        InterfaceC2809i[] value();
    }

    String[] expression();

    Class<? extends Annotation> qualifier();
}
