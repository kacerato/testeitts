package k0;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.EnumC14501a;

@Target({ElementType.PARAMETER})
@of.e(EnumC14501a.RUNTIME)
@of.f(allowedTargets = {of.b.VALUE_PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
public @interface B {
    String description();
}
