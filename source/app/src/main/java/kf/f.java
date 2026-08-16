package Kf;

import Ef.v;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE})
@of.f(allowedTargets = {of.b.CLASS})
@v
@Retention(RetentionPolicy.RUNTIME)
public @interface f {
    boolean couldBeConvertedToExplicitExport();
}
