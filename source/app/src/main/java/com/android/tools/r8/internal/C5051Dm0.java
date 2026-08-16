package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Objects;

public final class C5051Dm0 extends AbstractC4935Bm0 {

    public static final boolean f39641e = true;

    public final com.android.tools.r8.graph.J2 f39642c;

    public final ZY f39643d;

    public C5051Dm0(com.android.tools.r8.graph.J2 j22, ZY zy) {
        this.f39642c = j22;
        this.f39643d = zy;
    }

    @Override
    public final C5051Dm0 M() {
        return this;
    }

    @Override
    public final SD a(com.android.tools.r8.graph.proto.c cVar) {
        return this;
    }

    @Override
    public final AbstractC5746Pm0 b(C4798y c4798y, com.android.tools.r8.graph.M2 m22, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        G1 g12 = c4798y.f38427t;
        com.android.tools.r8.graph.J2 b10 = abstractC5308Hz.b(this.f39642c, abstractC5308Hz2);
        ZY zy = this.f39643d;
        g12.getClass();
        return new C5051Dm0(b10, zy);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj != null && C5051Dm0.class == obj.getClass()) {
            C5051Dm0 c5051Dm0 = (C5051Dm0) obj;
            if (this.f39642c == c5051Dm0.f39642c && this.f39643d == c5051Dm0.f39643d) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int hashCode() {
        return Objects.hash(this.f39642c, this.f39643d);
    }

    @Override
    public final boolean i0() {
        return true;
    }

    @Override
    public final String toString() {
        return "DexItemBasedConstString(" + this.f39642c.j0() + ")";
    }

    @Override
    public final boolean a(C4798y c4798y) {
        return true;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return true;
    }

    @Override
    public final AbstractC10561zE[] a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, InterfaceC10674zw0 interfaceC10674zw0, DV dv) {
        C6949de a10 = AbstractC8999pu0.a((C4798y<?>) c4798y, C8854p10.b());
        boolean z10 = f39641e;
        if (!z10 && !a10.a(dv.a(), (C4798y<?>) c4798y)) {
            throw new AssertionError();
        }
        C9820uq c9820uq = new C9820uq(interfaceC10674zw0.a(a10, dv.q()), this.f39642c, this.f39643d);
        c9820uq.b(dv.getPosition());
        if (!z10) {
            M1.a(c4798y, h52);
        }
        return new AbstractC10561zE[]{c9820uq};
    }
}
