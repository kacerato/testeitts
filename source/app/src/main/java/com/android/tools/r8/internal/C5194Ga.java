package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C5194Ga implements E1 {

    public final C5020Da f40518a;

    public final com.android.tools.r8.graph.H5 f40519b;

    public final C5252Ha f40520c;

    public C5194Ga(C5252Ha c5252Ha, C5020Da c5020Da, com.android.tools.r8.graph.H5 h52) {
        this.f40520c = c5252Ha;
        this.f40518a = c5020Da;
        this.f40519b = h52;
    }

    @Override
    public final InterfaceC5700Os0 a(I i10, D1 d12) {
        return ((W9) i10).a((H9) d12, this.f40520c.f40789a, this.f40518a);
    }

    @Override
    public final D1 a(Object obj, Object obj2, D1 d12) {
        return (H9) d12;
    }

    @Override
    public final D1 a(Object obj, I i10, D1 d12, Object obj2, com.android.tools.r8.graph.M2 m22) {
        return ((H9) d12).a(this.f40518a, m22);
    }

    @Override
    public final D1 a(Object obj, D1 d12) {
        H9 c8121kg = new C8121kg();
        int i10 = 0;
        if (!this.f40519b.d().w0()) {
            if (this.f40519b.d().j1()) {
                int i11 = InterfaceC8008jy.f49436a;
                c8121kg = c8121kg.a(0, C7501gv0.f48381c, this.f40518a);
            } else {
                c8121kg = c8121kg.a(0, InterfaceC8008jy.b(this.f40519b.p()), this.f40518a);
            }
            i10 = 1;
        }
        Iterator<com.android.tools.r8.graph.M2> it = this.f40519b.C().iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.M2 next = it.next();
            c8121kg = c8121kg.a(i10, InterfaceC8008jy.a(next), this.f40518a);
            i10 += next.B0();
        }
        return c8121kg;
    }

    @Override
    public final C6198Xi a(I i10, InterfaceC5700Os0 interfaceC5700Os0) {
        return new C5136Fa((W9) i10, (C7667hv) interfaceC5700Os0);
    }
}
