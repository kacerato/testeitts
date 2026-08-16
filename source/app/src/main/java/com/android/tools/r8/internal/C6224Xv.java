package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4429e8;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4594n3;
import com.android.tools.r8.graph.C4613o3;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4575m3;
import com.android.tools.r8.ir.optimize.C10729u;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11261j;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;

public class C6224Xv {

    public static final boolean f45856i = true;

    public final G1 f45857a;

    public final C4798y f45858b;

    public final C4724u1 f45859c;

    public final ConcurrentHashMap f45862f = new ConcurrentHashMap();

    public final ConcurrentHashMap f45863g = new ConcurrentHashMap();

    public final Set f45864h = ConcurrentHashMap.newKeySet();

    public final C6110Vv f45860d = new C6110Vv();

    public final C6167Wv f45861e = new C6167Wv();

    public C6224Xv(C4798y c4798y) {
        this.f45857a = c4798y.f38427t;
        this.f45858b = c4798y;
        this.f45859c = c4798y.b();
    }

    public static void a(com.android.tools.r8.graph.H2 h22, C11261j c11261j) {
        c11261j.f57437a.add(h22);
    }

    public final void b(C8195l40 c8195l40, com.android.tools.r8.graph.F5 f52) {
        if (((C11245i) this.f45858b.f()).c(f52)) {
            com.android.tools.r8.graph.H2 holder = f52.getHolder();
            if (this.f45864h.contains(holder)) {
                return;
            }
            F1 f12 = A7.f38535b;
            Iterator it = holder.a(new C4429e8()).iterator();
            while (true) {
                AbstractC7015e0 abstractC7015e0 = (AbstractC7015e0) it;
                if (!abstractC7015e0.hasNext()) {
                    break;
                }
                C4516j1 c4516j1 = (C4516j1) abstractC7015e0.next();
                c4516j1.L0();
                UD b10 = c4516j1.f37320m.m().b();
                b10.getClass();
                SD a10 = b10.a(f52.d());
                if (a10.r()) {
                    f12 = this.f45858b.f38429v.a(f12, a10.w(), f52);
                    if (f12.isUnknown()) {
                        break;
                    }
                } else if (a10.h()) {
                    f12 = C10504yv0.f54195b;
                } else {
                    if (!f45856i && !a10.s() && !a10.isUnknown()) {
                        throw new AssertionError();
                    }
                    f12 = C10504yv0.f54195b;
                }
            }
            if (!f45856i && (f12 instanceof A7)) {
                throw new AssertionError();
            }
            if (f12.isUnknown()) {
                return;
            }
            C4798y c4798y = this.f45858b;
            c8195l40.getClass();
            c8195l40.a(f52.d(), c4798y, f12);
        }
    }

    public final void a() {
        final C4594n3 c4594n3 = ((C11245i) this.f45858b.f()).f57404s;
        ((C11245i) this.f45858b.f()).f57405t.a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6224Xv.this.a(c4594n3, (com.android.tools.r8.graph.H2) obj, (Set) obj2);
            }
        });
        for (com.android.tools.r8.graph.H2 h22 : ((C11245i) this.f45858b.f()).d()) {
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C6224Xv.this.a(c4594n3, (com.android.tools.r8.graph.F5) obj);
                }
            };
            h22.getClass();
            h22.f(consumer, EnumC6871d70.f47286b);
        }
    }

    public final void a(final InterfaceC4575m3 interfaceC4575m3, com.android.tools.r8.graph.H2 h22, Set set) {
        C11245i c11245i = (C11245i) this.f45858b.f();
        if (!C11245i.f57385J) {
            c11245i.c();
        }
        if (c11245i.f57405t.a(h22) || h22.k1().isEmpty()) {
            return;
        }
        final C7040e80 k10 = C7040e80.k();
        h22.j(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6224Xv.this.a(interfaceC4575m3, k10, (com.android.tools.r8.graph.F5) obj);
            }
        });
        if (k10.f43368b.isEmpty()) {
            return;
        }
        this.f45863g.put(h22, k10);
    }

    public final void a(InterfaceC4575m3 interfaceC4575m3, C7040e80 c7040e80, com.android.tools.r8.graph.F5 f52) {
        if (f52.b(this.f45858b)) {
            C4613o3 c4613o3 = (C4613o3) ((C4594n3) interfaceC4575m3).f37507a.get(f52.getReference());
            if (c4613o3 == null || c4613o3.d()) {
                return;
            }
            A7 a72 = A7.f38535b;
            c7040e80.getClass();
            c7040e80.f43368b.put(new C7333fv(C5573Mn.f42399a, f52), a72);
        }
    }

    public final void a(final C8195l40 c8195l40, final com.android.tools.r8.graph.H2 h22) {
        final C7040e80 c7040e80 = (C7040e80) this.f45863g.get(h22);
        if (c7040e80 == null) {
            return;
        }
        h22.b(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C6224Xv.this.a(c7040e80, c8195l40, h22, (com.android.tools.r8.graph.F5) obj);
            }
        });
    }

    public final void a(InterfaceC4575m3 interfaceC4575m3, com.android.tools.r8.graph.F5 f52) {
        C4613o3 c4613o3 = (C4613o3) ((C4594n3) interfaceC4575m3).f37507a.get(f52.getReference());
        if (!this.f45858b.a(f52).a(this.f45858b, f52) || (c4613o3 != null && c4613o3.g())) {
            this.f45862f.put(f52.d(), C10671zv0.f54579b);
        }
    }

    public final void a(C10729u c10729u) {
        c10729u.a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6224Xv.this.a((C4460g1) obj, (com.android.tools.r8.graph.R2) obj2);
            }
        });
    }

    public final void a(C4460g1 c4460g1, final com.android.tools.r8.graph.R2 r22) {
        final com.android.tools.r8.graph.M2 type = c4460g1.getType();
        com.android.tools.r8.graph.M2 type2 = c4460g1.getType();
        r22.getClass();
        if (r22 == com.android.tools.r8.graph.R2.a(type2)) {
            return;
        }
        if (!f45856i && !type.I0() && !type.P0()) {
            throw new AssertionError();
        }
        this.f45862f.compute(c4460g1, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C6224Xv.this.a(r22, type, (C4460g1) obj, (AbstractC5361Iw0) obj2);
            }
        });
    }

    public final AbstractC5361Iw0 a(com.android.tools.r8.graph.R2 r22, com.android.tools.r8.graph.M2 m22, C4460g1 c4460g1, AbstractC5361Iw0 abstractC5361Iw0) {
        if (abstractC5361Iw0 == null) {
            F1 a10 = r22.a(this.f45857a);
            if (m22.I0()) {
                if (!f45856i && !a10.g0() && !(a10 instanceof C5051Dm0)) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.M2 m23 = this.f45859c.f38052g2;
                if (m22 == m23) {
                    boolean z10 = AbstractC10330xt.f53865a;
                    return C8288lg.a(a10, C7520h10.f48413b, Collections.EMPTY_SET);
                }
                C4798y c4798y = this.f45858b;
                C8854p10 b10 = C8854p10.b();
                m23.getClass();
                C6949de b11 = AbstractC8999pu0.a(m23, b10, (C4798y<?>) c4798y).b();
                boolean z11 = AbstractC10330xt.f53865a;
                return C8288lg.a(a10, new C8166kv(b11), Collections.EMPTY_SET);
            }
            if (f45856i || m22.P0()) {
                return C9790ug.a(a10);
            }
            throw new AssertionError();
        }
        return C10671zv0.f54579b;
    }

    public final void a(final com.android.tools.r8.graph.F5 f52, final C10340xw0 c10340xw0) {
        F1 f12;
        if (c10340xw0.R()) {
            f12 = this.f45857a.a(f52.getReference().getType());
        } else {
            int i10 = F1.f40064a;
            f12 = C10504yv0.f54195b;
        }
        final F1 f13 = f12;
        final C8854p10 B10 = c10340xw0.u().B();
        this.f45862f.compute(f52.d(), new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C6224Xv.this.a(f52, B10, f13, c10340xw0, (C4460g1) obj, (AbstractC5361Iw0) obj2);
            }
        });
    }

    public final AbstractC5361Iw0 a(com.android.tools.r8.graph.F5 f52, C8854p10 c8854p10, F1 f12, C10340xw0 c10340xw0, C4460g1 c4460g1, AbstractC5361Iw0 abstractC5361Iw0) {
        if (abstractC5361Iw0 != null && !abstractC5361Iw0.i()) {
            if (abstractC5361Iw0 instanceof C10671zv0) {
                return abstractC5361Iw0;
            }
            boolean z10 = f45856i;
            if (!z10 && !abstractC5361Iw0.j()) {
                throw new AssertionError();
            }
            if (abstractC5361Iw0 instanceof C7788ig) {
                C7788ig a10 = abstractC5361Iw0.a();
                C8854p10 a11 = a10.f49010f.a(c8854p10);
                a10.f49010f = a11;
                return a11.f() ? C10671zv0.f54579b : a10;
            }
            if (abstractC5361Iw0 instanceof C9790ug) {
                C9790ug e10 = abstractC5361Iw0.e();
                C4798y c4798y = this.f45858b;
                e10.getClass();
                com.android.tools.r8.graph.M2 type = f52.getReference().getType();
                F1 f13 = e10.f52914e;
                J1 j12 = c4798y.f38430w;
                AbstractC8999pu0 b10 = type.b(j12.f41551a);
                F1 a12 = j12.a(f13, f12, b10);
                if (!J1.f41268c && !a12.equals(j12.a(f12, f13, b10))) {
                    throw new AssertionError();
                }
                e10.f52914e = a12;
                a12.equals(f13);
                return e10.f52914e.isUnknown() ? C10671zv0.f54579b : e10;
            }
            if (!z10 && !(abstractC5361Iw0 instanceof C8288lg)) {
                throw new AssertionError();
            }
            C8288lg b11 = abstractC5361Iw0.b();
            C4798y c4798y2 = this.f45858b;
            C10664zt a13 = c10340xw0.a(c4798y2);
            b11.getClass();
            if (!C8288lg.f50029h && !f52.getReference().getType().I0()) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.M2 type2 = f52.getReference().getType();
            F1 f14 = b11.f50030f;
            J1 j13 = c4798y2.f38430w;
            AbstractC8999pu0 b12 = type2.b(j13.f41551a);
            F1 a14 = j13.a(f14, f12, b12);
            if (!J1.f41268c && !a14.equals(j13.a(f12, f14, b12))) {
                throw new AssertionError();
            }
            b11.f50030f = a14;
            a14.equals(f14);
            com.android.tools.r8.graph.M2 type3 = f52.getReference().getType();
            AbstractC10330xt abstractC10330xt = b11.f50031g;
            AbstractC10330xt a15 = AbstractC5363Ix0.a(c4798y2, abstractC10330xt.a(c4798y2, a13, null, type3), type3, C8854p10.h());
            b11.f50031g = a15;
            a15.equals(abstractC10330xt);
            return b11.w() ? C10671zv0.f54579b : b11;
        }
        com.android.tools.r8.graph.M2 type4 = f52.getReference().getType();
        if (type4.E0()) {
            return C7788ig.a(c8854p10);
        }
        if (type4.P0()) {
            return C9790ug.a(f12);
        }
        if (!f45856i && !type4.I0()) {
            throw new AssertionError();
        }
        C4798y c4798y3 = this.f45858b;
        return C8288lg.a(f12, AbstractC5363Ix0.a(c4798y3, c10340xw0.a(c4798y3).a(C8854p10.h()), f52.getReference().getType(), C8854p10.h()), Collections.EMPTY_SET);
    }

    public final void a(C9603tZ c9603tZ, com.android.tools.r8.graph.H2 h22, final com.android.tools.r8.graph.H5 h52) {
        C7040e80 c7040e80 = (C7040e80) this.f45863g.get(h22);
        if (c7040e80 == null) {
            return;
        }
        final QJ a10 = AbstractC7716iB.a(this.f45859c, c9603tZ.d());
        if (a10 == null) {
            this.f45863g.remove(h22);
            return;
        }
        com.android.tools.r8.graph.H0 e10 = a10.e(this.f45858b, h52);
        if (e10 == null) {
            this.f45863g.remove(h22);
            return;
        }
        C4516j1 d10 = e10.d();
        d10.L0();
        final UD b10 = d10.f37320m.a(a10).b();
        synchronized (c7040e80) {
            c7040e80.a(new InterfaceC7662ht0() {
                @Override
                public final boolean a(Object obj, Object obj2, Object obj3) {
                    return C6224Xv.this.a(b10, a10, h52, (com.android.tools.r8.graph.F5) obj, (F1) obj2, (Map.Entry) obj3);
                }
            });
        }
    }

    public final boolean a(UD ud2, QJ qj2, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.F5 f52, F1 f12, Map.Entry entry) {
        F1 f13;
        ud2.getClass();
        SD a10 = ud2.a(f52.d());
        if (a10.s()) {
            f13 = this.f45858b.f38429v.a(f12, ((C10340xw0) qj2.f54321f.get(a10.q().f43848a)).a(this.f45858b, h52, M1.f42128a), f52);
        } else if (a10.r()) {
            f13 = this.f45858b.f38429v.a(f12, a10.w(), f52);
        } else if (a10.h()) {
            f13 = C10504yv0.f54195b;
        } else {
            if (!f45856i && !a10.isUnknown()) {
                throw new AssertionError();
            }
            f13 = C10504yv0.f54195b;
        }
        if (!f45856i) {
            f13.getClass();
            if (f13 instanceof A7) {
                throw new AssertionError();
            }
        }
        entry.setValue(f13);
        return f13.isUnknown();
    }

    public final void a(C8195l40 c8195l40, com.android.tools.r8.graph.F5 f52) {
        F1 a10;
        AbstractC5361Iw0 abstractC5361Iw0 = (AbstractC5361Iw0) this.f45862f.getOrDefault(f52.d(), AbstractC5361Iw0.a(f52.getReference().getType()));
        if (abstractC5361Iw0.i()) {
            a10 = this.f45858b.f38427t.a(f52.getReference().getType());
        } else {
            a10 = abstractC5361Iw0.a(this.f45858b);
        }
        if (a10.b0()) {
            C4798y c4798y = this.f45858b;
            c8195l40.getClass();
            c8195l40.a(f52.d(), c4798y, a10);
        }
        if ((abstractC5361Iw0 instanceof C8288lg) && f52.d().f37207l.g().l()) {
            AbstractC10330xt abstractC10330xt = abstractC5361Iw0.b().f50031g;
            if (!abstractC10330xt.l()) {
                if (!f45856i && !AbstractC5363Ix0.a(this.f45858b, abstractC10330xt, f52.getReference().getType(), C8854p10.h()).equals(abstractC10330xt)) {
                    throw new AssertionError();
                }
                if (abstractC10330xt.j()) {
                    c8195l40.getClass();
                    c8195l40.a(f52.d()).f45082d = abstractC10330xt;
                } else {
                    com.android.tools.r8.graph.M2 type = f52.getReference().getType();
                    C4798y c4798y2 = this.f45858b;
                    type.getClass();
                    if (abstractC10330xt.a().b(this.f45858b, AbstractC10330xt.a(c4798y2, AbstractC8999pu0.a(type, C8854p10.h(), (C4798y<?>) c4798y2)))) {
                        c8195l40.getClass();
                        c8195l40.a(f52.d()).f45082d = abstractC10330xt;
                    }
                }
            }
        }
        if (f52.getAccessFlags().n()) {
            return;
        }
        b(c8195l40, f52);
    }

    public final AbstractC6333Zs0 a(C7040e80 c7040e80, C8195l40 c8195l40, final com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.F5 f52) {
        F1 f12 = (F1) c7040e80.a(f52, C10504yv0.f54195b);
        f12.getClass();
        if (f12 instanceof A7) {
            c8195l40.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C6224Xv.a(com.android.tools.r8.graph.H2.this, (C11261j) obj);
                }
            });
            return C6162Ws0.f45559c;
        }
        if (f12.b0()) {
            C4798y c4798y = this.f45858b;
            c8195l40.getClass();
            c8195l40.a(f52.d(), c4798y, f12);
        }
        return C6276Ys0.f46097c;
    }

    public final void a(AbstractC8374m80 abstractC8374m80, final C8195l40 c8195l40) {
        if (!f45856i) {
            c8195l40.b();
        }
        for (com.android.tools.r8.graph.H5 h52 : abstractC8374m80.f45165b.values()) {
            this.f45860d.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C6224Xv.this.a(c8195l40, (com.android.tools.r8.graph.F5) obj);
                }
            }, h52);
            this.f45861e.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C6224Xv.this.a(c8195l40, (com.android.tools.r8.graph.H2) obj);
                }
            }, h52);
        }
        C11245i c11245i = (C11245i) this.f45858b.f();
        if (!C11245i.f57385J) {
            c11245i.c();
        } else {
            c11245i.getClass();
        }
        c8195l40.f49878b.a(c11245i);
        c8195l40.c();
    }
}
