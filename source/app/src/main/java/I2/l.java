package I2;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;

@Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
@Documented
public @interface l {
    String[] imports() default {};

    String replacement();

    String[] staticImports() default {};
}
