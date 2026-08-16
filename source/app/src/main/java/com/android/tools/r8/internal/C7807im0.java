package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;

public final class C7807im0 extends AbstractC8307lm0 {

    public final int f49052c;

    public C7807im0(int i10) {
        this.f49052c = i10;
    }

    @Override
    public final AbstractC10561zE[] a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, InterfaceC10674zw0 interfaceC10674zw0, DV dv) {
        C4724u1 b10 = c4798y.b();
        boolean z10 = C9126qh.f51850m;
        C8959ph c8959ph = (C8959ph) ((C8959ph) new C8959ph().a(interfaceC10674zw0, AbstractC8999pu0.j())).a(dv.getPosition(), c4798y.E());
        c8959ph.f51588d = this.f49052c;
        C9126qh c10 = c8959ph.c();
        boolean z11 = C7405gK.f48231o;
        C7238fK c7238fK = new C7238fK();
        c7238fK.f52321a = interfaceC10674zw0.a(c4798y.b().f37996Z1.b((C4798y<?>) c4798y), dv.q());
        c7238fK.f44718d = b10.f37820A4.f36523d;
        c7238fK.f52322b = dv.getPosition();
        return new AbstractC10561zE[]{c10, ((C7238fK) c7238fK.a(c10.d())).c()};
    }

    @Override
    public final AbstractC8999pu0 b(C4798y c4798y) {
        return c4798y.b().f37996Z1.b((C4798y<?>) c4798y);
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C7807im0) && this.f49052c == ((C7807im0) obj).f49052c;
    }

    @Override
    public final int hashCode() {
        return this.f49052c;
    }

    @Override
    public final boolean i0() {
        return false;
    }

    @Override
    public final long j0() {
        return this.f49052c;
    }

    @Override
    public final String toString() {
        return "SingleBoxedFloatValue(" + Float.intBitsToFloat(this.f49052c) + ")";
    }
}
