package com.google.android.gms.internal.measurement;

import java.io.IOException;

public final class P5 {

    public final O5 f62084a;

    public P5(C6 c62, Object obj, C6 c63, Object obj2) {
        this.f62084a = new O5(c62, "", c63, "");
    }

    public static P5 a(C6 c62, Object obj, C6 c63, Object obj2) {
        return new P5(c62, "", c63, "");
    }

    public static void b(W4 w42, O5 o52, Object obj, Object obj2) throws IOException {
        C12073g5.f(w42, o52.f62075a, 1, obj);
        C12073g5.f(w42, o52.f62077c, 2, obj2);
    }

    public static int c(O5 o52, Object obj, Object obj2) {
        return C12073g5.h(o52.f62075a, 1, obj) + C12073g5.h(o52.f62077c, 2, obj2);
    }

    public final int d(int i10, Object obj, Object obj2) {
        O5 o52 = this.f62084a;
        int G10 = W4.G(i10 << 3);
        int c10 = c(o52, obj, obj2);
        return G10 + W4.G(c10) + c10;
    }

    public final O5 e() {
        return this.f62084a;
    }
}
