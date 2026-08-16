package q3;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.LOCAL_VARIABLE})
@Retention(RetentionPolicy.SOURCE)
public @interface c {

    public enum a {
        JAVA_ITERATOR,
        FAST_ENUMERATION
    }

    a value();
}
