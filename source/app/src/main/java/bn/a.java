package bn;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.PARAMETER, ElementType.METHOD})
@Retention(RetentionPolicy.CLASS)
public @interface a {

    public static final String f33521K = "The method argument (if parameter was annotated) or this container (if instance method was annotated)";

    public static final String f33522L = "this";

    public static final String f33523M = "This container (if the parameter was annotated) or the return value (if instance method was annotated)";

    public static final String f33524N = "The return value of this method";

    public static final String f33525O = "this";

    String source() default "The method argument (if parameter was annotated) or this container (if instance method was annotated)";

    boolean sourceIsContainer() default false;

    String target() default "This container (if the parameter was annotated) or the return value (if instance method was annotated)";

    boolean targetIsContainer() default false;
}
