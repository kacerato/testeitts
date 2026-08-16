package Ce;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.CONSTRUCTOR, ElementType.METHOD, ElementType.TYPE})
@Documented
@Retention(RetentionPolicy.RUNTIME)
public @interface h {

    public static final String f4303n = "none";

    public static final String f4304o = "custom";

    public static final String f4305p = "io.reactivex:computation";

    public static final String f4306q = "io.reactivex:io";

    public static final String f4307r = "io.reactivex:new-thread";

    public static final String f4308s = "io.reactivex:trampoline";

    public static final String f4309t = "io.reactivex:single";

    String value();
}
