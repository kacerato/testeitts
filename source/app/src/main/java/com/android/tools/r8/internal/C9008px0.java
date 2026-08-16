package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.shaking.C11245i;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class C9008px0 {

    public static final boolean f51669e = true;

    public final AX f51670a = new AX(new HashMap());

    public final IdentityHashMap f51671b = new IdentityHashMap();

    public final HashMap f51672c = new HashMap();

    public final C9175qx0 f51673d;

    public C9008px0(C9175qx0 c9175qx0, final com.android.tools.r8.graph.H2 h22) {
        this.f51673d = c9175qx0;
        C4387c4 c4387c4 = c9175qx0.f45516b;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9008px0.this.b(h22, (com.android.tools.r8.graph.H2) obj);
            }
        };
        c4387c4.getClass();
        c4387c4.a(EnumC6871d70.f47286b, consumer, h22);
    }

    public final void b(final com.android.tools.r8.graph.H2 h22, final com.android.tools.r8.graph.H2 h23) {
        C9008px0 c9008px0 = (C9008px0) this.f51673d.f51917h.get(h23.d0());
        if (!f51669e && c9008px0 == null) {
            throw new AssertionError();
        }
        this.f51670a.a(this.f51673d.f51916g, c9008px0.f51670a);
        c9008px0.f51671b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C9008px0.this.a(h22, (com.android.tools.r8.graph.M2) obj, (AX) obj2);
            }
        });
        c9008px0.f51672c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C9008px0.this.a(h22, h23, (C10664zt) obj, (AX) obj2);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.M2 m22, AX ax) {
        if (m22.b(this.f51673d.f51916g).a(h22.getType().b(this.f51673d.f51916g), this.f51673d.f51916g)) {
            a(m22, ax);
        }
    }

    /* JADX WARN: Type inference failed for: r6v3, types: [java.util.Map, com.android.tools.r8.internal.u1] */
    public final void a(final com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H2 h23, C10664zt c10664zt, AX ax) {
        boolean b10;
        C6949de b11 = c10664zt.n().b();
        C6949de b12 = AbstractC8999pu0.a(h22.getType(), C8854p10.h(), (C4798y<?>) this.f51673d.f51916g).b();
        if (h23.isInterface() && !h22.isInterface() && h22.a1() != this.f51673d.f51916g.b().f38068i2) {
            b10 = b12.b(b11, this.f51673d.f51916g);
        } else if (b12.F().f53468a.isEmpty()) {
            b10 = b12.a(b11);
        } else {
            b10 = b12.b(b11, this.f51673d.f51916g);
        }
        if (!b10) {
            a(c10664zt, ax);
            return;
        }
        if (c10664zt.e()) {
            C6949de b13 = c10664zt.b();
            if (!b13.a(h22.getType().b(this.f51673d.f51916g), this.f51673d.f51916g)) {
                return;
            } else {
                a(b13.a(this.f51673d.f51916g.b()), ax);
            }
        } else {
            this.f51670a.a(this.f51673d.f51916g, ax);
        }
        ax.a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C9008px0.this.a(h22, (com.android.tools.r8.graph.F2) obj, (InterfaceC10100wX) obj2);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [com.android.tools.r8.graph.E0] */
    /* JADX WARN: Type inference failed for: r5v3, types: [com.android.tools.r8.graph.b1, com.android.tools.r8.graph.E0] */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.android.tools.r8.graph.b1, com.android.tools.r8.graph.E0] */
    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.F2 f22, InterfaceC10100wX interfaceC10100wX) {
        com.android.tools.r8.graph.Z4 b10;
        C11245i c11245i = (C11245i) this.f51673d.f51916g.f();
        boolean z10 = C4514j.f37304i;
        if (!z10) {
            c11245i.c();
        } else {
            c11245i.getClass();
        }
        if (h22.isInterface()) {
            if (!z10) {
                c11245i.c();
            }
            b10 = c11245i.d(h22, f22.b(), f22.a());
        } else {
            if (!z10) {
                c11245i.c();
            } else {
                c11245i.getClass();
            }
            b10 = c11245i.b(h22, f22.b(), f22.a());
        }
        Z4.c<?> o10 = b10.o();
        while (o10 != null && o10.q().f37314g.D()) {
            C11245i c11245i2 = (C11245i) this.f51673d.f51916g.f();
            com.android.tools.r8.graph.M2 a12 = o10.d().a1();
            if (!C4514j.f37304i) {
                c11245i2.c();
            } else {
                c11245i2.getClass();
            }
            o10 = c11245i2.b(a12, f22.b(), f22.a()).o();
        }
        if (o10 == null || !o10.d().e0() || o10.d() == h22 || !o10.q().b1()) {
            return;
        }
        com.android.tools.r8.graph.H2 d02 = o10.d().d0();
        ((C9008px0) this.f51673d.f51917h.get(d02)).a(d02.getType(), o10.r(), interfaceC10100wX);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52, InterfaceC10100wX interfaceC10100wX) {
        AX ax = (AX) this.f51671b.computeIfAbsent(m22, TU.a(new C8654nq1()));
        C4798y c4798y = this.f51673d.f51916g;
        ax.getClass();
        ax.b(c4798y, h52.x(), interfaceC10100wX);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(com.android.tools.r8.graph.M2 m22, AX ax) {
        ((AX) this.f51671b.computeIfAbsent(m22, TU.a(new C8654nq1()))).a(this.f51673d.f51916g, ax);
    }

    public final void a(C10664zt c10664zt, com.android.tools.r8.graph.H5 h52, InterfaceC8956pg interfaceC8956pg) {
        AX ax = (AX) this.f51672c.computeIfAbsent(c10664zt, TU.a(new C8654nq1()));
        C4798y c4798y = this.f51673d.f51916g;
        ax.getClass();
        ax.b(c4798y, h52.x(), interfaceC8956pg);
    }

    public final void a(C10664zt c10664zt, AX ax) {
        ((AX) this.f51672c.computeIfAbsent(c10664zt, TU.a(new C8654nq1()))).a(this.f51673d.f51916g, ax);
    }
}
