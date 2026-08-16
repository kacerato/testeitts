package Gm;

import Lm.G;
import Lm.I;
import Lm.w;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE_USE, ElementType.TYPE_PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
@G({I.RECEIVER, I.RETURN})
@w
public @interface b {
}
