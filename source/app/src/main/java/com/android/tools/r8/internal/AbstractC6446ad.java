package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC6255Yi;

public abstract class AbstractC6446ad {
    public static InterfaceC6297Zc a(final C4798y c4798y, com.android.tools.r8.graph.H5 h52, final C7215fB c7215fB, final C8659ns0 c8659ns0) {
        if (!h52.d().f1()) {
            C4516j1 d10 = h52.d();
            if (d10.getReference().a(d10.w0()) != 0) {
                final EJ ej2 = new EJ(c4798y, C9872v7.f53015b, c7215fB, new C5642Ns0(c4798y, h52, c7215fB));
                final AbstractC6255Yi.a aVar = (AbstractC6255Yi.a) c8659ns0.a("Data flow analysis", new InterfaceC7158es0() {
                    @Override
                    public final Object get() {
                        return AbstractC6446ad.a(EJ.this, c7215fB, c8659ns0);
                    }
                });
                if (aVar == null) {
                    return C7355g2.f48169a;
                }
                AbstractC9867v50 abstractC9867v50 = (AbstractC9867v50) c8659ns0.a("Externalize", new InterfaceC7158es0() {
                    @Override
                    public final Object get() {
                        return AbstractC6446ad.a(AbstractC6255Yi.a.this, c4798y);
                    }
                });
                abstractC9867v50.getClass();
                if (abstractC9867v50 instanceof C9872v7) {
                    return C8689o2.f51137a;
                }
                if (abstractC9867v50 instanceof C10170wv0) {
                    return C7355g2.f48169a;
                }
                return new C5270Hg(abstractC9867v50);
            }
        }
        return C7355g2.f48169a;
    }

    public static AbstractC6255Yi.a a(EJ ej2, C7215fB c7215fB, C8659ns0 c8659ns0) {
        W5 k10 = c7215fB.k();
        ej2.getClass();
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) k10);
        return ej2.a(c6286Yx0, c8659ns0).a();
    }

    public static AbstractC9867v50 a(AbstractC6255Yi.a aVar, C4798y c4798y) {
        D1 d12 = null;
        for (D1 d13 : aVar.f46065a.values()) {
            d12 = d12 != null ? d12.b(c4798y, d13) : d13;
        }
        return ((AbstractC9867v50) d12).e();
    }
}
