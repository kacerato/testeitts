package com.google.android.gms.measurement.internal;

import android.util.Log;
import java.util.Objects;

public final class RunnableC12440y2 implements Runnable {

    public final int f63710b;

    public final String f63711c;

    public final Object f63712d;

    public final Object f63713e;

    public final Object f63714f;

    public final B2 f63715g;

    public RunnableC12440y2(B2 b22, int i10, String str, Object obj, Object obj2, Object obj3) {
        this.f63710b = i10;
        this.f63711c = str;
        this.f63712d = obj;
        this.f63713e = obj2;
        this.f63714f = obj3;
        Objects.requireNonNull(b22);
        this.f63715g = b22;
    }

    @Override
    public final void run() {
        B2 b22 = this.f63715g;
        P2 x10 = b22.f62917a.x();
        if (!x10.k()) {
            Log.println(6, b22.z(), "Persisted config not initialized. Not logging error/warn");
            return;
        }
        if (b22.D() == 0) {
            C12370p3 c12370p3 = b22.f62917a;
            if (c12370p3.w().B()) {
                c12370p3.c();
                b22.E('C');
            } else {
                c12370p3.c();
                b22.E('c');
            }
        }
        if (b22.F() < 0) {
            b22.f62917a.w().A();
            b22.G(130000L);
        }
        int i10 = this.f63710b;
        char D10 = b22.D();
        long F10 = b22.F();
        String str = this.f63711c;
        Object obj = this.f63712d;
        Object obj2 = this.f63713e;
        Object obj3 = this.f63714f;
        char charAt = "01VDIWEA?".charAt(i10);
        String A10 = B2.A(true, str, obj, obj2, obj3);
        int length = String.valueOf(charAt).length();
        StringBuilder sb2 = new StringBuilder(length + 1 + String.valueOf(D10).length() + String.valueOf(F10).length() + 1 + A10.length());
        sb2.append("2");
        sb2.append(charAt);
        sb2.append(D10);
        sb2.append(F10);
        sb2.append(b3.s.f32937c);
        sb2.append(A10);
        String sb3 = sb2.toString();
        if (sb3.length() > 1024) {
            sb3 = str.substring(0, 1024);
        }
        N2 n22 = x10.f62850e;
        if (n22 != null) {
            n22.a(sb3, 1L);
        }
    }
}
