package nf;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import of.EnumC14501a;

@Target({ElementType.TYPE})
@of.e(EnumC14501a.RUNTIME)
@of.f(allowedTargets = {of.b.CLASS})
@Retention(RetentionPolicy.RUNTIME)
@InterfaceC14422l0(version = "1.3")
public @interface N {

    public static final class a {
        @InterfaceC14427o(level = EnumC14431q.WARNING, message = "Bytecode version had no significant use in Kotlin metadata and it will be removed in a future version.")
        public static void a() {
        }

        @InterfaceC14422l0(version = "1.2")
        public static void b() {
        }

        @InterfaceC14422l0(version = "1.1")
        public static void c() {
        }
    }

    @Lf.j(name = "bv")
    int[] bv() default {1, 0, 3};

    @Lf.j(name = "d1")
    String[] d1() default {};

    @Lf.j(name = "d2")
    String[] d2() default {};

    @Lf.j(name = "k")
    int k() default 1;

    @Lf.j(name = "mv")
    int[] mv() default {};

    @Lf.j(name = "pn")
    String pn() default "";

    @Lf.j(name = "xi")
    int xi() default 0;

    @Lf.j(name = "xs")
    String xs() default "";
}
