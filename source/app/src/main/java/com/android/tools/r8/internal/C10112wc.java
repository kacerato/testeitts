package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4421e0;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.ir.optimize.C10696a;

public final class C10112wc extends AbstractC4497i0 {

    public final com.android.tools.r8.graph.H5 f53528e;

    public C10112wc(com.android.tools.r8.graph.H5 h52) {
        this.f53528e = h52;
    }

    @Override
    public final C7215fB a(com.android.tools.r8.graph.H5 h52, C4798y c4798y, EW.a aVar) {
        B60.c.a a10 = B60.c.t().a(h52.getReference()).a(0);
        a10.f38816e = h52.d().F0();
        B60.c a11 = a10.a();
        C7215fB a12 = this.f53528e.d().Q0().a(h52, this.f53528e, c4798y, c4798y.v(), new C10523z10(), a11, c4798y.v().f((AbstractC5308Hz) null, this.f53528e.getReference()));
        C7549hB p10 = a12.p();
        AbstractC10241xK.a(p10, h52.A().o().a().f53153a);
        C8024k3 v10 = p10.next().v();
        boolean z10 = C8024k3.f49471m;
        C7857j3 c7857j3 = new C7857j3();
        c7857j3.f52321a = a12.a(AbstractC8999pu0.k(), (C4515j0) null);
        c7857j3.f49143d = v10.b(true);
        C8024k3 c8024k3 = new C8024k3(c7857j3.f52321a, c7857j3.f49143d, false);
        B60 b60 = c7857j3.f52322b;
        if (b60 != null) {
            c8024k3.b(b60);
        }
        p10.a(c8024k3, (C10696a) null);
        while (p10.hasNext()) {
            AbstractC10561zE next = p10.next();
            next.getClass();
            if (next instanceof C4) {
                next.d().f(next.W0());
                p10.i();
            } else if (next.g2() && !next.G0().v2()) {
                p10.a(new C10471yk0(), (C10696a) null);
            }
        }
        return new C7215fB(c4798y.E(), h52, a12.f47896c, a12.f47897d, a12.f47898e, a12.f47899f, a12.f47902i, aVar);
    }

    @Override
    public final boolean c(Object obj) {
        throw new C5417Jv0();
    }

    @Override
    public final int k0() {
        throw new C5417Jv0();
    }

    @Override
    public final int q0() {
        throw new C5417Jv0();
    }

    @Override
    public final String toString() {
        return "CheckNotZeroCode(" + this.f53528e.r() + ")";
    }

    @Override
    public final boolean x0() {
        throw new C5417Jv0();
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, AbstractC4446f6 abstractC4446f6) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(C4421e0 c4421e0, C5563Mi c5563Mi) {
        throw new C5417Jv0();
    }

    @Override
    public final String a(C4516j1 c4516j1, C9970vk0 c9970vk0) {
        return toString();
    }
}
