package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.C8106kb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.function.IntConsumer;

public final class C8355m2 implements X9 {

    public static final boolean f50180c = true;

    public final C4798y f50181b;

    public C8355m2(C4798y c4798y) {
        this.f50181b = c4798y;
    }

    @Override
    public final void a(IntConsumer intConsumer) {
        AbstractC4962Ca.b(intConsumer);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6473am a(com.android.tools.r8.graph.H5 h52, W9 w92) {
        boolean z10;
        if (w92.L()) {
            C7437ga j10 = w92.j();
            com.android.tools.r8.graph.Z4 b10 = ((C4514j) this.f50181b.f()).b(j10.V(), j10.X());
            b10.getClass();
            if (!(b10 instanceof com.android.tools.r8.graph.V4) && !b10.v()) {
                if (b10.h()) {
                    z10 = b10.k().y();
                } else {
                    if (!f50180c && !b10.w()) {
                        throw new AssertionError();
                    }
                    if (b10.q().w0() != j10.O()) {
                        z10 = true;
                    }
                }
                if (z10) {
                    return a(this.f50181b, j10, b10);
                }
            }
            z10 = false;
            if (z10) {
            }
        }
        return C6473am.f46625a;
    }

    public static C6204Xl a(final C4798y c4798y, final C7437ga c7437ga, final com.android.tools.r8.graph.Z4 z42) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                Collection a10;
                a10 = C8355m2.a(r1, r2, qt, abstractC7103ea, c5035Df, C8355m2.a(C4798y.this, c7437ga, z42, h52));
                return a10;
            }
        }));
    }

    public static C6204Xl a(final C4798y c4798y, final C7437ga c7437ga, InterfaceC6318Zl interfaceC6318Zl) {
        C6261Yl a10 = new C6261Yl().a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                Collection a11;
                a11 = C8355m2.a(C4798y.this, c7437ga, qt, abstractC7103ea, c5035Df, new Cj1());
                return a11;
            }
        });
        a10.a(interfaceC6318Zl);
        return new C6204Xl(a10);
    }

    public static ArrayList a(C4798y c4798y, C7437ga c7437ga, QT qt, AbstractC7103ea abstractC7103ea, C5035Df c5035Df, com.android.tools.r8.ir.optimize.K0 k02) {
        W9 c10212x9;
        C8106kb.a aVar;
        if (k02 == null) {
            if (f50180c) {
                return null;
            }
            throw new AssertionError();
        }
        com.android.tools.r8.graph.H5 h52 = k02.a(c4798y, abstractC7103ea, c5035Df).f54773a;
        ArrayList arrayList = new ArrayList();
        com.android.tools.r8.graph.O2 x02 = c7437ga.V().x0();
        for (int length = x02.f36675b.length - 1; length >= 0; length--) {
            if (x02.j(length).T0()) {
                aVar = C8106kb.a.Pop2;
            } else {
                aVar = C8106kb.a.Pop;
            }
            arrayList.add(new C8106kb(aVar));
        }
        if (!c7437ga.O()) {
            arrayList.add(new C8106kb(C8106kb.a.Pop));
        }
        C7437ga c7437ga2 = new C7437ga(184, h52.getReference(), false);
        if (!f50180c && !c7437ga2.V().z0().I0()) {
            throw new AssertionError();
        }
        arrayList.add(c7437ga2);
        arrayList.add(new C8106kb(C8106kb.a.Pop));
        com.android.tools.r8.graph.M2 z02 = c7437ga.V().z0();
        if (!z02.S0()) {
            if (z02.P0()) {
                EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
                c10212x9 = new C10546z9(0L, EnumC5477Kw0.a((char) z02.f36592f.f36562f[0]));
            } else {
                c10212x9 = new C10212x9();
            }
            arrayList.add(c10212x9);
            return arrayList;
        }
        qt.a(1);
        return arrayList;
    }

    public static com.android.tools.r8.ir.optimize.K0 a(C4798y c4798y, C7437ga c7437ga, com.android.tools.r8.graph.Z4 z42, com.android.tools.r8.graph.H5 h52) {
        if (z42 == null) {
            return new Cj1();
        }
        if (z42.w()) {
            if (z42.q().w0() != c7437ga.O()) {
                return new Dj1();
            }
            return null;
        }
        if (!z42.h()) {
            return null;
        }
        Z4.a k10 = z42.k();
        C4514j g10 = c4798y.g();
        if (k10.a((com.android.tools.r8.graph.E0) h52.getHolder(), (C4798y<?>) c4798y, g10)) {
            return new com.android.tools.r8.ir.optimize.K0() {
                @Override
                public final com.android.tools.r8.ir.optimize.L0 a(C4798y c4798y2, com.android.tools.r8.ir.optimize.N0 n02, C5035Df c5035Df) {
                    return com.android.tools.r8.ir.optimize.M0.a(c4798y2, n02, c5035Df);
                }
            };
        }
        if (k10.b((com.android.tools.r8.graph.E0) h52.getHolder(), (C4798y<?>) c4798y, g10)) {
            return new Cj1();
        }
        if (k10.u()) {
            return new Dj1();
        }
        return null;
    }
}
