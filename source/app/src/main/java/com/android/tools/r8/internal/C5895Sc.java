package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4421e0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Collection;
import java.util.LinkedList;
import java.util.Set;

public final class C5895Sc extends AbstractC4497i0 {

    public static final boolean f44241f = true;

    public final AbstractC7552hC f44242e;

    public C5895Sc(AbstractC7552hC abstractC7552hC) {
        this.f44242e = abstractC7552hC;
    }

    @Override
    public final C7215fB a(com.android.tools.r8.graph.H5 h52, C4798y c4798y, EW.a aVar) {
        if (!f44241f && this.f44242e.isEmpty()) {
            throw new AssertionError();
        }
        B60.c.a a10 = B60.c.t().a(0).a(h52.getReference());
        a10.f38816e = h52.d().F0();
        B60.c a11 = a10.a();
        C8382mB c8382mB = new C8382mB();
        C10523z10 c10523z10 = new C10523z10();
        C10523z10 c10523z102 = new C10523z10();
        W5 w52 = new W5(c8382mB);
        w52.d(c10523z10.a());
        AbstractC4895Av0 it = this.f44242e.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H5 h53 = (com.android.tools.r8.graph.H5) it.next();
            boolean z10 = C7405gK.f48231o;
            C7238fK c7238fK = new C7238fK();
            c7238fK.f44718d = h53.getReference();
            c7238fK.f52322b = a11;
            w52.a(c7238fK.c(), c8382mB);
        }
        boolean z11 = C10471yk0.f54132l;
        C10304xk0 c10304xk0 = new C10304xk0();
        c10304xk0.f52322b = B60.s();
        C10471yk0 c10471yk0 = c10304xk0.f53830d == null ? new C10471yk0() : new C10471yk0(c10304xk0.f53830d);
        B60 b60 = c10304xk0.f52322b;
        if (b60 != null) {
            c10471yk0.b(b60);
        }
        w52.a(c10471yk0, c8382mB);
        boolean z12 = true;
        w52.f45296i = true;
        C8570nJ E10 = c4798y.E();
        boolean z13 = AT.f38618a;
        LinkedList linkedList = new LinkedList();
        linkedList.add(w52);
        C7215fB c7215fB = new C7215fB(E10, h52, a11, linkedList, c10523z102, c10523z10, c8382mB, aVar);
        Z5 u10 = c7215fB.u();
        Y5 I10 = u10.next().I();
        Set<W5> c10 = AbstractC5513Ll0.c();
        AbstractC4895Av0 it2 = this.f44242e.iterator();
        while (it2.hasNext()) {
            com.android.tools.r8.graph.H5 h54 = (com.android.tools.r8.graph.H5) it2.next();
            if (!I10.hasNext()) {
                I10 = u10.next().I();
            }
            Y5 y52 = I10;
            C7405gK i02 = y52.next().i0();
            if (!f44241f && i02 == null) {
                throw new AssertionError();
            }
            C7215fB c7215fB2 = c7215fB;
            boolean z14 = z12;
            C7215fB a12 = h54.d().Q0().a(h52, h54, c4798y, c4798y.f38414g, c10523z102, a11, com.android.tools.r8.graph.proto.j.f37620d);
            h54.d().f37327t = z14;
            y52.previous();
            I10 = y52;
            I10.a((C4798y<?>) c4798y, c7215fB2, a12, u10, c10, (com.android.tools.r8.graph.H2) null);
            c7215fB = c7215fB2;
            z12 = z14;
            a11 = a11;
        }
        C7215fB c7215fB3 = c7215fB;
        c7215fB3.b((Collection<W5>) c10);
        c7215fB3.a((C6382aB) null, (C10696a) null);
        c7215fB3.x();
        if (f44241f || c7215fB3.b((C4798y<?>) c4798y)) {
            return c7215fB3;
        }
        throw new AssertionError();
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
        throw new C5417Jv0();
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
        throw new C5417Jv0();
    }
}
