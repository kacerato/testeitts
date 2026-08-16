package Bf;

import B0.C2324i;
import android.icu.text.DateFormat;
import b2.AbstractC3834c;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;

@Target({ElementType.TYPE})
@of.f(allowedTargets = {of.b.CLASS})
@InterfaceC14410f0
@Retention(RetentionPolicy.RUNTIME)
@InterfaceC14422l0(version = "1.3")
public @interface f {

    public static final class a {
        @InterfaceC14422l0(version = "2.2")
        public static void a() {
        }
    }

    @Lf.j(name = AbstractC3834c.f32824b1)
    String c() default "";

    @Lf.j(name = "f")
    String f() default "";

    @Lf.j(name = "i")
    int[] i() default {};

    @Lf.j(name = "l")
    int[] l() default {};

    @Lf.j(name = DateFormat.MINUTE)
    String m() default "";

    @Lf.j(name = C2324i.f1246e)
    String[] n() default {};

    @Lf.j(name = "nl")
    int[] nl() default {};

    @Lf.j(name = "s")
    String[] s() default {};

    @Lf.j(name = "v")
    int v() default 2;
}
