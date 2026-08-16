package of;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.RUNTIME)
@f(allowedTargets = {b.ANNOTATION_CLASS})
public @interface e {
    EnumC14501a value() default EnumC14501a.RUNTIME;
}
