package kf;

import java.util.logging.Level;
import java.util.logging.Logger;
import p000if.C13702E;

public final class C13976c {

    public static final Logger f95069a = Logger.getLogger(C13976c.class.getName());

    public static final C13974a f95070b = new C13974a();

    public static float a(InterfaceC13975b interfaceC13975b, float f10, float f11, int i10, float f12, float f13, float f14) {
        C13702E.t(interfaceC13975b, "noise2");
        C13702E.F(i10, "octaves");
        C13702E.E(f12, "fundamental");
        float f15 = 0.0f;
        if (f13 > 0.0f) {
            float f16 = 1.0f;
            if (f13 < 1.0f) {
                if (f14 <= 1.0f) {
                    f95069a.log(Level.SEVERE, "lacunarity={0}", Float.valueOf(f14));
                    throw new IllegalArgumentException("lacunarity should be greater than 1");
                }
                for (int i11 = 0; i11 < i10; i11++) {
                    f15 += interfaceC13975b.a(f10 * f12, f11 * f12) * f16;
                    f12 *= f14;
                    f16 *= f13;
                }
                return f15;
            }
        }
        f95069a.log(Level.SEVERE, "gain={0}", Float.valueOf(f13));
        throw new IllegalArgumentException("gain should be between 0 and 1");
    }

    public static C13974a b() {
        return f95070b;
    }

    public static float c() {
        return f95070b.nextFloat();
    }

    public static void d(long j10) {
        f95070b.setSeed(j10);
    }
}
