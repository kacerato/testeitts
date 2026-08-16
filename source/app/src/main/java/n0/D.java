package n0;

import kotlin.jvm.internal.t0;
import nf.L0;

@t0({"SMAP\nScalar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n1#1,57:1\n34#1:58\n36#1:59\n*S KotlinDebug\n*F\n+ 1 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n38#1:58\n40#1:59\n*E\n"})
public final class D {

    public static final float f97547a = 3.1415927f;

    public static final float f97548b = 1.5707964f;

    public static final float f97549c = 6.2831855f;

    public static final float f97550d = 12.566371f;

    public static final float f97551e = 0.31830987f;

    public static final float f97552f = 0.15915494f;

    public static final float f97553g = 0.07957747f;

    public static final short f97554h = C14344i.r(L0.i((short) 15360));

    public static final short f97555i = C14344i.r(L0.i((short) 16384));

    public static final float a(float f10, float f11, float f12) {
        return f10 < f11 ? f11 : f10 > f12 ? f12 : f10;
    }

    public static final short b(short s10, short s11, short s12) {
        return C14344i.q(s10, s11) < 0 ? s11 : C14344i.q(s10, s12) > 0 ? s12 : s10;
    }

    public static final float c(float f10) {
        return f10 * 57.295776f;
    }

    public static final float d(float f10) {
        return f10 % 1;
    }

    public static final short e() {
        return f97554h;
    }

    public static final short f() {
        return f97555i;
    }

    public static final float g(float f10, float f11, float f12) {
        return (f10 * (1.0f - f12)) + (f11 * f12);
    }

    public static final short h(short s10, short s11, short s12) {
        return C14344i.M(C14344i.P(s10, C14344i.I(e(), s12)), C14344i.P(s11, s12));
    }

    public static final float i(float f10, float f11) {
        return (float) Math.pow(f10, f11);
    }

    public static final float j(float f10) {
        return f10 * 0.017453292f;
    }

    public static final float k(float f10) {
        float f11 = 0.0f;
        if (f10 >= 0.0f) {
            f11 = 1.0f;
            if (f10 <= 1.0f) {
                return f10;
            }
        }
        return f11;
    }

    public static final short l(short s10) {
        short k10 = C14344i.f97612c.k();
        short e10 = e();
        return C14344i.q(s10, k10) < 0 ? k10 : C14344i.q(s10, e10) > 0 ? e10 : s10;
    }

    public static final float m(float f10) {
        return f10 * f10;
    }

    public static final short n(short s10) {
        return C14344i.P(s10, s10);
    }
}
