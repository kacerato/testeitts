package Ef;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.EnumC14501a;

@Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
@of.e(EnumC14501a.BINARY)
@of.f(allowedTargets = {of.b.FUNCTION, of.b.PROPERTY, of.b.CONSTRUCTOR})
@Retention(RetentionPolicy.CLASS)
public @interface i {
}
