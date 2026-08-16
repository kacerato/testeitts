package of;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.ANNOTATION_TYPE})
@f(allowedTargets = {b.ANNOTATION_CLASS})
@Documented
@Retention(RetentionPolicy.RUNTIME)
@c
public @interface f {
    b[] allowedTargets();
}
