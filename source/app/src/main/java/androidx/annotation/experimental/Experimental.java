package androidx.annotation.experimental;

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

@Target({ElementType.ANNOTATION_TYPE})
@e(EnumC14501a.BINARY)
@InterfaceC14427o(message = "This annotation has been replaced by `@RequiresOptIn`", replaceWith = @InterfaceC14412g0(expression = "RequiresOptIn", imports = {"androidx.annotation.RequiresOptIn"}))
@f(allowedTargets = {b.ANNOTATION_CLASS})
@Retention(RetentionPolicy.CLASS)
public @interface Experimental {

    public enum Level {
        WARNING,
        ERROR
    }

    Level level() default Level.ERROR;
}
