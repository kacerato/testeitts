package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class C9175qx0 extends CW {

    public static final boolean f51915i = true;

    public final C4798y f51916g;

    public final IdentityHashMap f51917h;

    public C9175qx0(C4798y c4798y, C4387c4 c4387c4, C10601zX c10601zX) {
        super(c4798y, c4387c4, c10601zX);
        this.f51917h = new IdentityHashMap();
        this.f51916g = c4798y;
    }

    @Override
    public final void a(Collection collection) {
        super.a(collection);
        if (!f51915i) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
                if (!f51915i && !a(h22)) {
                    throw new AssertionError();
                }
            }
        }
        boolean z10 = f51915i;
        if (!z10 && !z10 && !this.f51917h.isEmpty()) {
            throw new AssertionError();
        }
    }

    @Override
    public final void j(com.android.tools.r8.graph.H2 h22) {
        a(h22, (C9008px0) this.f51917h.remove(h22));
    }

    @Override
    public final void l(com.android.tools.r8.graph.H2 h22) {
        if (!f51915i && this.f51917h.containsKey(h22)) {
            throw new AssertionError();
        }
        m(h22);
    }

    public final void m(final com.android.tools.r8.graph.H2 h22) {
        final C9008px0 c9008px0 = new C9008px0(this, h22);
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9175qx0.this.a(c9008px0, h22, (com.android.tools.r8.graph.H5) obj);
            }
        };
        h22.getClass();
        h22.j(consumer, EnumC6871d70.f47286b);
        if (!f51915i) {
            AbstractC8999pu0 b10 = h22.getType().b(this.f51916g);
            Iterator it = c9008px0.f51671b.o().iterator();
            while (it.hasNext()) {
                AbstractC8999pu0 b11 = ((com.android.tools.r8.graph.M2) it.next()).b(c9008px0.f51673d.f51916g);
                if (!C9008px0.f51669e && !b11.a(b10, c9008px0.f51673d.f51916g)) {
                    throw new AssertionError();
                }
            }
        }
        this.f51917h.put(h22, c9008px0);
    }

    public final void a(final C9008px0 c9008px0, final com.android.tools.r8.graph.H2 h22, final com.android.tools.r8.graph.H5 h52) {
        C10601zX c10601zX = this.f39257f;
        c10601zX.getClass();
        InterfaceC10100wX a10 = c10601zX.a(h52.getReference());
        if (a10.g()) {
            return;
        }
        if (a10.isUnknown()) {
            c9008px0.f51670a.a(h52, C9669tv0.f52729a);
            return;
        }
        AbstractC8455mg d10 = a10.d();
        d10.getClass();
        if (d10 instanceof C8622ng) {
            return;
        }
        d10.j().a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C9175qx0.this.a(c9008px0, h52, h22, (C10664zt) obj, (InterfaceC8956pg) obj2);
            }
        });
    }

    public final void a(C9008px0 c9008px0, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H2 h22, C10664zt c10664zt, InterfaceC8956pg interfaceC8956pg) {
        if (c10664zt.l()) {
            AX ax = c9008px0.f51670a;
            C4798y c4798y = this.f51916g;
            ax.getClass();
            ax.b(c4798y, h52.x(), interfaceC8956pg);
            return;
        }
        C6949de b10 = c10664zt.n().b();
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f51916g.g(b10.a(this.f51916g.b())));
        if (a10 == null || a10 == h22) {
            if (c10664zt.e()) {
                com.android.tools.r8.graph.M2 a11 = c10664zt.b().a(this.f51916g.b());
                if (!f51915i && c10664zt.i() && !a11.a(h22.getType())) {
                    throw new AssertionError();
                }
                c9008px0.a(a11, h52, interfaceC8956pg);
                return;
            }
            AX ax2 = c9008px0.f51670a;
            C4798y c4798y2 = this.f51916g;
            ax2.getClass();
            ax2.b(c4798y2, h52.x(), interfaceC8956pg);
            return;
        }
        if (!f51915i && h22.getType().b(this.f51916g).b(b10, this.f51916g)) {
            throw new AssertionError();
        }
        c9008px0.a(c10664zt, h52, interfaceC8956pg);
    }

    public final void a(com.android.tools.r8.graph.H2 h22, final C9008px0 c9008px0) {
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9175qx0.this.a(c9008px0, (com.android.tools.r8.graph.H5) obj);
            }
        };
        h22.getClass();
        h22.j(consumer, EnumC6871d70.f47286b);
    }

    public final void a(C9008px0 c9008px0, com.android.tools.r8.graph.H5 h52) {
        AbstractC10330xt c8166kv;
        AbstractC5361Iw0 c10124wg;
        if (!h52.d().b1()) {
            return;
        }
        C10601zX c10601zX = this.f39257f;
        c10601zX.getClass();
        InterfaceC10100wX a10 = c10601zX.a(h52.getReference());
        if (a10.f() || a10.isUnknown()) {
            return;
        }
        if (!f51915i && !a10.g() && !a10.c()) {
            throw new AssertionError();
        }
        if (!C9008px0.f51669e) {
            c9008px0.getClass();
            if (!h52.d().n1()) {
                throw new AssertionError();
            }
        }
        AX ax = c9008px0.f51670a;
        ax.getClass();
        InterfaceC10100wX a11 = ax.a(h52.x()).a();
        if (!c9008px0.f51671b.isEmpty()) {
            com.android.tools.r8.graph.D2 x10 = h52.x();
            for (AX ax2 : c9008px0.f51671b.values()) {
                C4798y c4798y = c9008px0.f51673d.f51916g;
                ax2.getClass();
                a11 = a11.a(c4798y, x10, ax2.a(h52.x()), AbstractC4939Bo0.f39020a);
            }
        }
        if (a11.f()) {
            C8622ng b10 = a11.b();
            AbstractC5361Iw0 abstractC5361Iw0 = (AbstractC5361Iw0) b10.f51020c.get(0);
            abstractC5361Iw0.getClass();
            if (abstractC5361Iw0 instanceof C10124wg) {
                C10124wg f10 = abstractC5361Iw0.f();
                AbstractC10330xt z10 = f10.z();
                if (z10.h()) {
                    C10664zt a12 = z10.a();
                    AbstractC8999pu0 n10 = a12.n();
                    com.android.tools.r8.graph.M2 p10 = h52.p();
                    C4798y c4798y2 = c9008px0.f51673d.f51916g;
                    C8854p10 b11 = C8854p10.b();
                    p10.getClass();
                    AbstractC8999pu0 a13 = AbstractC8999pu0.a(p10, b11, (C4798y<?>) c4798y2);
                    if (n10.b(a13, c9008px0.f51673d.f51916g)) {
                        c8166kv = z10.a(C8854p10.b());
                        if (!C9008px0.f51669e && !c8166kv.equals(z10) && z10.d().d()) {
                            throw new AssertionError();
                        }
                    } else {
                        C6949de b12 = a12.b();
                        if (b12 == null) {
                            boolean z11 = AbstractC10330xt.f53865a;
                            c8166kv = C7520h10.f48413b;
                        } else {
                            if (!C9008px0.f51669e && !b12.b(a13, c9008px0.f51673d.f51916g)) {
                                throw new AssertionError();
                            }
                            c8166kv = b12.a(a13) ? new C8166kv(b12.a(C8854p10.b())) : AbstractC10330xt.a(c9008px0.f51673d.f51916g, a13, b12.a(C8854p10.b()));
                        }
                    }
                } else {
                    c8166kv = z10;
                }
                if (!c8166kv.equals(z10)) {
                    if (c8166kv.j()) {
                        c10124wg = C10671zv0.f54579b;
                    } else {
                        c10124wg = new C10124wg(c8166kv, f10.p());
                    }
                    b10.a(0, c10124wg);
                }
            } else if (!C9008px0.f51669e && !abstractC5361Iw0.i() && !(abstractC5361Iw0 instanceof C10671zv0)) {
                throw new AssertionError();
            }
        }
        if (!f51915i && a11.e()) {
            AbstractC8455mg d10 = a11.d();
            d10.getClass();
            if (!(d10 instanceof C8622ng)) {
                throw new AssertionError();
            }
        }
        this.f39257f.a(h52, a11);
    }
}
