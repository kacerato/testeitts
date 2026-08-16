package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.synthesis.S;
import java.util.Collection;
import java.util.function.Consumer;

public final class A5 extends AbstractC10200x5 {

    public final F5 f38528b;

    public A5(C4554l1 c4554l1, F5 f52) {
        super(c4554l1);
        this.f38528b = f52;
    }

    public final com.android.tools.r8.graph.H5 a(final C4798y c4798y, C5035Df c5035Df) {
        return c4798y.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                return A5.this.a(s10);
            }
        }, c5035Df.a(), c4798y, new Consumer() {
            @Override
            public final void accept(Object obj) {
                A5.this.a(c4798y, (com.android.tools.r8.synthesis.N) obj);
            }
        });
    }

    public final void a(final C4798y c4798y, com.android.tools.r8.synthesis.N n10) {
        n10.f58124n = c4798y.f38404S.a((com.android.tools.r8.graph.J2) this.f53683a);
        n10.f58115e = c4798y.b().a(((C4554l1) this.f53683a).getType(), new com.android.tools.r8.graph.M2[0]);
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return A5.this.a(c4798y, a22);
            }
        };
    }

    @Override
    public final Collection a(B60 b60, W9 w92, C4798y c4798y, AbstractC7103ea abstractC7103ea, C5035Df c5035Df, QT qt) {
        com.android.tools.r8.graph.H5 a10 = a(c4798y, c5035Df);
        abstractC7103ea.s(a10, c5035Df.f39582c);
        return new C5920Sm0(new C7437ga(184, a10.getReference(), false));
    }

    public final S.b a(com.android.tools.r8.synthesis.S s10) {
        return s10.f58151D;
    }

    public final AbstractC4497i0 a(C4798y c4798y, com.android.tools.r8.graph.A2 a22) {
        return this.f38528b.a(c4798y.b(), a22);
    }
}
