package Lf;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.EnumC14501a;

@Target({ElementType.FIELD, ElementType.METHOD})
@of.e(EnumC14501a.SOURCE)
@of.f(allowedTargets = {of.b.FILE, of.b.FUNCTION, of.b.PROPERTY_GETTER, of.b.PROPERTY_SETTER, of.b.FIELD})
@Retention(RetentionPolicy.SOURCE)
public @interface q {
}
