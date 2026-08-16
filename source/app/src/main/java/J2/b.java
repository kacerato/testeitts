package J2;

import I2.k;
import I2.o;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.FIELD})
@k(modifier = {o.FINAL})
@Retention(RetentionPolicy.RUNTIME)
public @interface b {
}
