package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;

public final class C7140em0 extends AbstractC8307lm0 {

    public static final C7140em0 f47780d = new C7140em0(false);

    public static final C7140em0 f47781e = new C7140em0(true);

    public final boolean f47782c;

    public C7140em0(boolean z10) {
        this.f47782c = z10;
    }

    @Override
    public final AbstractC10561zE[] a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, InterfaceC10674zw0 interfaceC10674zw0, DV dv) {
        C4724u1 b10 = c4798y.b();
        boolean z10 = C5576Mo0.f42407m;
        C5519Lo0 c5519Lo0 = new C5519Lo0();
        c5519Lo0.f52321a = interfaceC10674zw0.a(c4798y.b().f37968V1.b((C4798y<?>) c4798y), dv.q());
        c5519Lo0.f42081d = this.f47782c ? b10.f38190x4.f38216b : b10.f38190x4.f38215a;
        c5519Lo0.f52322b = dv.getPosition();
        C5576Mo0 c5576Mo0 = new C5576Mo0(c5519Lo0.f42081d, c5519Lo0.f52321a);
        B60 b60 = c5519Lo0.f52322b;
        if (b60 != null) {
            c5576Mo0.b(b60);
        }
        return new AbstractC10561zE[]{c5576Mo0};
    }

    @Override
    public final AbstractC8999pu0 b(C4798y c4798y) {
        return c4798y.b().f37968V1.b((C4798y<?>) c4798y);
    }

    @Override
    public final boolean equals(Object obj) {
        return this == obj;
    }

    @Override
    public final int hashCode() {
        return C8704o7.a(this.f47782c);
    }

    @Override
    public final boolean i0() {
        return true;
    }

    @Override
    public final long j0() {
        return C8704o7.a(this.f47782c);
    }

    @Override
    public final String toString() {
        return "SingleBoxedBooleanValue(" + this.f47782c + ")";
    }
}
