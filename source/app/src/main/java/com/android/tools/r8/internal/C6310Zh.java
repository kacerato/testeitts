package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4421e0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.EW;
import java.util.function.Predicate;

public final class C6310Zh extends AbstractC7221fD {

    public static final boolean f46316i = true;

    public final C4554l1 f46317f;

    public int f46318g;

    public final DG f46319h;

    public C6310Zh(DG dg2, C4554l1 c4554l1, int i10) {
        this.f46319h = dg2;
        this.f46317f = c4554l1;
        this.f46318g = i10;
    }

    public final void a(AbstractC4446f6 abstractC4446f6) {
        if (!f46316i && !abstractC4446f6.f37178c.d()) {
            throw new AssertionError();
        }
        CG cg2 = new CG(((C8731oG) this.f46319h.values()).f51202b);
        while (cg2.hasNext()) {
            abstractC4446f6.a((com.android.tools.r8.graph.A2) cg2.a().f44051c);
            if (abstractC4446f6.f37178c.c()) {
                return;
            }
        }
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
    public final void l(int i10) {
        this.f46318g += i10;
    }

    @Override
    public final int q0() {
        return Integer.MAX_VALUE;
    }

    @Override
    public final boolean r0() {
        return true;
    }

    @Override
    public final String toString() {
        return C6310Zh.class.getSimpleName();
    }

    @Override
    public final boolean x0() {
        return false;
    }

    @Override
    public final AbstractC5308Hz a(C4798y c4798y) {
        return c4798y.v().d().a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((R00) obj).i();
            }
        });
    }

    @Override
    public final WS a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C10215xA c10215xA) {
        C9065qG c9065qG = new C9065qG(((C8564nG) this.f46319h.c()).f50573c);
        while (c9065qG.hasNext()) {
            C8898pG a10 = c9065qG.a();
            a10.setValue(c10215xA.c((com.android.tools.r8.graph.A2) a10.getValue()));
        }
        return new C6253Yh(new C9717uB(c4798y).a(a(h52, c4798y, EW.b(c4798y)), C9875v8.b(), C8659ns0.c()), c10215xA);
    }

    @Override
    public final C7215fB a(com.android.tools.r8.graph.H5 h52, C4798y c4798y, EW.a aVar) {
        B60.c.a a10 = B60.c.t().a(0).a(h52.getReference());
        a10.f38816e = true;
        return C6382aB.a(h52, c4798y, new C6196Xh(this.f46319h, h52, this.f46317f, this.f46318g, a10.a())).a(h52, aVar);
    }

    @Override
    public final C7215fB a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53, C4798y c4798y, AbstractC5308Hz abstractC5308Hz, C10523z10 c10523z10, B60 b60, com.android.tools.r8.graph.proto.j jVar) {
        return new C6382aB(h53, c4798y, abstractC5308Hz, new C6196Xh(this.f46319h, h53, this.f46317f, this.f46318g, b60), jVar, c10523z10).a(h52, EW.d());
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, AbstractC4446f6 abstractC4446f6) {
        a(abstractC4446f6);
    }

    @Override
    public final void a(C4421e0 c4421e0, C5563Mi c5563Mi) {
        a(c5563Mi);
    }

    @Override
    public final String a(C4516j1 c4516j1, C9970vk0 c9970vk0) {
        return C6310Zh.class.getSimpleName();
    }
}
