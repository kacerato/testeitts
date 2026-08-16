package I2;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@k(modifier = {o.PUBLIC, o.PRIVATE, o.STATIC, o.FINAL})
@Documented
@Retention(RetentionPolicy.CLASS)
public @interface g {
}
