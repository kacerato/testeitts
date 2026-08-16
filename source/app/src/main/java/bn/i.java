package bn;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.jetbrains.annotations.NonNls;

@Target({ElementType.METHOD, ElementType.FIELD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.ANNOTATION_TYPE})
@d("RegExp")
@Retention(RetentionPolicy.CLASS)
public @interface i {
    @NonNls
    String prefix() default "";

    @NonNls
    String suffix() default "";
}
