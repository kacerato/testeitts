package eg;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import nf.InterfaceC14414h0;
import of.EnumC14501a;

@Target({ElementType.TYPE, ElementType.METHOD})
@of.e(EnumC14501a.BINARY)
@InterfaceC14414h0(level = InterfaceC14414h0.a.ERROR, message = "This is an internal kotlinx.coroutines API that should not be used from outside of kotlinx.coroutines. No compatibility guarantees are provided. It is recommended to report your use-case of internal API to kotlinx.coroutines issue tracker, so stable API could be provided instead")
@of.f(allowedTargets = {of.b.CLASS, of.b.FUNCTION, of.b.TYPEALIAS, of.b.PROPERTY})
@Retention(RetentionPolicy.CLASS)
public @interface F0 {
}
