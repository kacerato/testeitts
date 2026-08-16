package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.W10;
import com.android.tools.r8.internal.X10;
import com.android.tools.r8.internal.Y10;

public class C11114a4 {

    public final Y10 f57170a;

    public static class a {

        public final Y10 f57171a = new Y10();

        public a a(boolean z10, Z3 z32) {
            this.f57171a.a(z32, z10);
            return this;
        }

        public C11114a4 a() {
            return new C11114a4(this.f57171a);
        }
    }

    public C11114a4(Y10 y10) {
        this.f57170a = y10;
    }

    public static a a() {
        return new a();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C11114a4)) {
            return false;
        }
        C11114a4 c11114a4 = (C11114a4) obj;
        Y10 y10 = this.f57170a;
        if (y10.f45901d != c11114a4.f57170a.f45901d) {
            return false;
        }
        W10 w10 = new W10(new X10(y10));
        W10 w102 = new W10(new X10(c11114a4.f57170a));
        while (w10.hasNext()) {
            if (!((com.android.tools.r8.internal.W0) w10.next()).equals((com.android.tools.r8.internal.W0) w102.next())) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        W10 w10 = new W10(new X10(this.f57170a));
        int i10 = 0;
        while (w10.hasNext()) {
            com.android.tools.r8.internal.W0 w02 = (com.android.tools.r8.internal.W0) w10.next();
            i10 = (i10 * (w02.f45255c ? 1 : 2) * 13) + ((Z3) w02.f45254b).f57147a.hashCode();
        }
        return i10;
    }

    public boolean a(com.android.tools.r8.graph.M2 m22) {
        String A02 = m22.A0();
        W10 w10 = new W10(new X10(this.f57170a));
        while (w10.hasNext()) {
            if (Z3.a(0, 0, ((Z3) ((com.android.tools.r8.internal.W0) w10.next()).f45254b).f57147a, A02)) {
                return !r1.f45255c;
            }
        }
        return false;
    }
}
