package androidx.annotation.experimental;

import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import nf.InterfaceC14412g0;
import nf.InterfaceC14427o;
import of.EnumC14501a;
import of.b;
import of.e;
import of.f;

@Target({ElementType.TYPE, ElementType.METHOD, ElementType.PARAMETER, ElementType.CONSTRUCTOR, ElementType.LOCAL_VARIABLE})
@e(EnumC14501a.BINARY)
@InterfaceC14427o(message = "This annotation has been replaced by `@OptIn`", replaceWith = @InterfaceC14412g0(expression = "OptIn", imports = {"androidx.annotation.OptIn"}))
@f(allowedTargets = {b.CLASS, b.PROPERTY, b.LOCAL_VARIABLE, b.VALUE_PARAMETER, b.CONSTRUCTOR, b.FUNCTION, b.PROPERTY_GETTER, b.PROPERTY_SETTER, b.FILE, b.TYPEALIAS})
@Retention(RetentionPolicy.CLASS)
public @interface UseExperimental {
    Class<? extends Annotation>[] markerClass();
}
