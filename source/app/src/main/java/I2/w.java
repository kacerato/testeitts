package I2;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.FIELD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE})
@k(modifier = {o.FINAL})
@Retention(RetentionPolicy.RUNTIME)
public @interface w {
}
