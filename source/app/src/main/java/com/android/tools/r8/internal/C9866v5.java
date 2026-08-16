package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.synthesis.S;
import java.util.Collection;
import java.util.function.Consumer;

public class C9866v5 extends AbstractC10200x5 {

    public final F5 f53013b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9866v5(com.android.tools.r8.graph.A2 a22, F5 f52) {
        super(a22);
        a22.f38298g.toString();
        this.f53013b = f52;
    }

    public final void a(final C4798y c4798y, com.android.tools.r8.synthesis.N n10) {
        n10.f58127q = false;
        n10.f58115e = a(c4798y.b());
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C9866v5.this.a(c4798y, a22);
            }
        };
    }

    public C9866v5(com.android.tools.r8.graph.A2 a22, F5 f52, int i10) {
        super(a22);
        this.f53013b = f52;
    }

    public final com.android.tools.r8.graph.H5 a(final C4798y c4798y, C5035Df c5035Df) {
        return c4798y.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                return C9866v5.this.a(s10);
            }
        }, c5035Df.a(), c4798y, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9866v5.this.a(c4798y, (com.android.tools.r8.synthesis.N) obj);
            }
        });
    }

    public S.b a(com.android.tools.r8.synthesis.S s10) {
        return s10.f58150C;
    }

    @Override
    public Collection a(B60 b60, W9 w92, C4798y c4798y, AbstractC7103ea abstractC7103ea, C5035Df c5035Df, QT qt) {
        com.android.tools.r8.graph.H5 a10 = a(c4798y, c5035Df);
        abstractC7103ea.s(a10, c5035Df.f39582c);
        return new C5920Sm0(new C7437ga(184, a10.getReference(), false));
    }

    public final AbstractC4497i0 a(C4798y c4798y, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.G a10 = this.f53013b.a(c4798y.b(), a22);
        return c4798y.E().J() ? a10.a(a22, true, (com.android.tools.r8.graph.A2) this.f53683a, false, c4798y.b()) : a10;
    }

    public com.android.tools.r8.graph.I2 a(C4724u1 c4724u1) {
        return ((com.android.tools.r8.graph.A2) this.f53683a).y0();
    }
}
