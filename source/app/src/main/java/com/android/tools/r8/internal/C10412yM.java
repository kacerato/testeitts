package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.shaking.AbstractC11415s1;
import com.android.tools.r8.shaking.C11213g1;
import java.util.function.Consumer;

public final class C10412yM extends AbstractC9579tN {

    public final AbstractC11415s1 f53995a;

    public final BN f53996b;

    public final com.android.tools.r8.graph.D5 f53997c;

    public final EM f53998d;

    public C10412yM(AbstractC11415s1 abstractC11415s1, BN bn2, com.android.tools.r8.graph.D5 d52, EM em2) {
        this.f53995a = abstractC11415s1;
        this.f53996b = bn2;
        this.f53997c = d52;
        this.f53998d = em2;
    }

    public final void a(EM em2, IM im2, AbstractC11415s1 abstractC11415s1, C4666r0 c4666r0) {
        C11213g1 c11213g1;
        em2.getClass();
        int m02 = c4666r0.m0();
        if (((m02 == 0 || m02 == 1) && (m02 != 0 || (im2.f41066b & 2) > 0) && (m02 != 1 || (im2.f41066b & 1) > 0)) ? EM.a(c4666r0.l0(), im2.f41065a) : false) {
            int i10 = im2.f41066b;
            int i11 = i10 & 1;
            if (i11 > 0 && (i10 & 2) > 0) {
                c11213g1 = C11213g1.f57333e;
            } else if (i11 > 0) {
                c11213g1 = C11213g1.f57331c;
            } else if ((i10 & 2) > 0) {
                c11213g1 = C11213g1.f57332d;
            } else {
                c11213g1 = C11213g1.f57330b;
            }
            abstractC11415s1.f57790a.f57760i.a(c4666r0.l0(), c11213g1);
            abstractC11415s1.m();
        }
    }

    @Override
    public final void a(C6911dN c6911dN) {
        C11213g1 c11213g1;
        final IM im2 = c6911dN.f47388b;
        if (im2.f41065a.c()) {
            AbstractC11415s1 abstractC11415s1 = this.f53995a;
            int i10 = im2.f41066b;
            int i11 = i10 & 1;
            if (i11 > 0 && (i10 & 2) > 0) {
                c11213g1 = C11213g1.f57333e;
            } else if (i11 > 0) {
                c11213g1 = C11213g1.f57331c;
            } else if ((i10 & 2) > 0) {
                c11213g1 = C11213g1.f57332d;
            } else {
                c11213g1 = C11213g1.f57330b;
            }
            abstractC11415s1.f57790a.f57760i.a(c11213g1);
            abstractC11415s1.m();
            return;
        }
        C4723u0 k02 = this.f53997c.d().k0();
        final EM em2 = this.f53998d;
        final AbstractC11415s1 abstractC11415s12 = this.f53995a;
        k02.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10412yM.this.a(em2, im2, abstractC11415s12, (C4666r0) obj);
            }
        });
    }
}
