package com.android.tools.r8.graph;

import java.util.IdentityHashMap;
import java.util.Set;

public final class C4536k2 {

    public static final boolean f37415h = true;

    public final I2 f37416a;

    public final I2 f37417b;

    public final I2 f37418c;

    public final Set f37419d;

    public final Set f37420e;

    public final Set f37421f;

    public final C4724u1 f37422g;

    public C4536k2(C4724u1 c4724u1) {
        this.f37422g = c4724u1;
        this.f37416a = c4724u1.a(c4724u1.f38068i2, c4724u1.f38092l2);
        this.f37417b = c4724u1.a(c4724u1.f37905M1, c4724u1.f38092l2);
        this.f37418c = c4724u1.a(c4724u1.f37849E1, c4724u1.f38092l2);
        this.f37419d = a("compareAndExchange", "compareAndExchangeAcquire", "compareAndExchangeRelease", c4724u1.f38171v1, "getAcquire", "getAndAdd", "getAndAddAcquire", "getAndAddRelease", "getAndBitwiseAnd", "getAndBitwiseAndAcquire", "getAndBitwiseAndRelease", "getAndBitwiseOr", "getAndBitwiseOrAcquire", "getAndBitwiseOrRelease", "getAndBitwiseXor", "getAndBitwiseXorAcquire", "getAndBitwiseXorRelease", "getAndSet", "getAndSetAcquire", "getAndSetRelease", "getOpaque", "getVolatile");
        this.f37420e = a(c4724u1.f38179w1, "setOpaque", c4724u1.f37825B1, c4724u1.f37817A1);
        this.f37421f = a(c4724u1.f38187x1, c4724u1.f38195y1, "weakCompareAndSetAcquire", "weakCompareAndSetPlain", "weakCompareAndSetRelease");
    }

    public final Set a(Object... objArr) {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        for (Object obj : objArr) {
            L2 b10 = obj instanceof String ? this.f37422g.b((String) obj) : (L2) obj;
            identityHashMap.put(b10, b10);
        }
        return identityHashMap.o();
    }

    public final boolean a(A2 a22) {
        M2 m22 = a22.f38297f;
        C4724u1 c4724u1 = this.f37422g;
        if (m22 == c4724u1.f37920O2) {
            L2 l22 = a22.f38298g;
            return l22 == c4724u1.f37897L0 || l22 == c4724u1.f37904M0;
        }
        if (m22 == c4724u1.f37913N2) {
            return this.f37419d.contains(a22.f38298g) || this.f37420e.contains(a22.f38298g) || this.f37421f.contains(a22.f38298g);
        }
        return false;
    }
}
