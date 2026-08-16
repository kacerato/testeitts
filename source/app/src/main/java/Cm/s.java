package Cm;

import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface s {
    EnumC2431m prefix() default EnumC2431m.one;

    Class<? extends Annotation> quantity();
}
