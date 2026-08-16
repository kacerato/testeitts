package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

public final class C5304Hx {

    public static final boolean f40926h = true;

    public final C4798y f40927a;

    public final C8048kB f40928b;

    public final C5591Mw f40929c;

    public final C10601zX f40930d;

    public final C6555bD f40931e;

    public final LinkedHashMap f40932f = new LinkedHashMap();

    public final LinkedHashMap f40933g = new LinkedHashMap();

    public C5304Hx(C4798y c4798y, C8048kB c8048kB, C5591Mw c5591Mw, C10601zX c10601zX, C6555bD c6555bD) {
        this.f40927a = c4798y;
        this.f40928b = c8048kB;
        this.f40929c = c5591Mw;
        this.f40930d = c10601zX;
        this.f40931e = c6555bD;
    }

    public final AbstractC6333Zs0 a(C6431aX c6431aX, AbstractC5420Jx abstractC5420Jx, r rVar) {
        com.android.tools.r8.graph.A2 a22 = c6431aX.f46550a;
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f40927a.g(a22.s0()));
        com.android.tools.r8.graph.H5 e10 = a10 != null ? a10.e(a22) : null;
        if (e10 == null) {
            if (!f40926h) {
                com.android.tools.r8.ir.optimize.W w10 = this.f40928b.f49535n;
                com.android.tools.r8.graph.A2 a23 = c6431aX.f46550a;
                if (!com.android.tools.r8.ir.optimize.W.f54813k) {
                    if (!w10.f54821h.contains(a23)) {
                        throw new AssertionError();
                    }
                } else {
                    w10.getClass();
                }
            }
            return C6276Ys0.f46097c;
        }
        C10601zX c10601zX = this.f40930d;
        c10601zX.getClass();
        InterfaceC10100wX a11 = c10601zX.a(e10.getReference());
        if (a11.g()) {
            return C6276Ys0.f46097c;
        }
        if (!f40926h && !a11.f() && !a11.isUnknown()) {
            throw new AssertionError();
        }
        if (a11.isUnknown() && c6431aX.f46550a.a(c6431aX.f46551b, c6431aX.f46552c).a(abstractC5420Jx.e())) {
            Iterator<E> it = abstractC5420Jx.f41532a.iterator();
            while (it.hasNext()) {
                ((AbstractC5420Jx) it.next()).f41533b.remove(abstractC5420Jx);
            }
            abstractC5420Jx.f41532a.clear();
            abstractC5420Jx.a(C10671zv0.f54579b);
            return C6162Ws0.f45559c;
        }
        abstractC5420Jx.a(rVar, a(e10, c6431aX.f46551b, a11));
        return C6276Ys0.f46097c;
    }

    public final C5304Hx b() {
        ((C11245i) this.f40927a.f()).d().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5304Hx.this.b((com.android.tools.r8.graph.H2) obj);
            }
        });
        return this;
    }

    public final void b(com.android.tools.r8.graph.H2 h22) {
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5304Hx.this.b((com.android.tools.r8.graph.F5) obj);
            }
        };
        h22.getClass();
        h22.f(consumer, EnumC6871d70.f47286b);
        h22.l(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5304Hx.this.b((com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(com.android.tools.r8.graph.F5 f52) {
        AbstractC5361Iw0 abstractC5361Iw0;
        AbstractC10458yg c10 = this.f40929c.a(f52).c();
        if (c10 == null) {
            return;
        }
        if (c10.t()) {
            c10.f54102b = Collections.EMPTY_SET;
            if (c10.u()) {
                abstractC5361Iw0 = c10.q();
            } else if (!c10.t() && c10.v() && c10.f54103c) {
                abstractC5361Iw0 = c10.r();
            }
            if (abstractC5361Iw0.i()) {
                return;
            }
            if (((AbstractC5361Iw0) this.f40929c.f42460a.f43368b.remove(new C7333fv(C5573Mn.f42399a, f52))) == null) {
                AbstractC5361Iw0.a(f52.getReference().getType());
            }
            C5362Ix c5362Ix = (C5362Ix) this.f40932f.get(f52.getReference());
            if (c5362Ix != null) {
                AbstractC5361Iw0 abstractC5361Iw02 = c5362Ix.f41255f;
                abstractC5361Iw02.getClass();
                if (abstractC5361Iw02 instanceof C10671zv0) {
                    return;
                }
                if (!f40926h && !c5362Ix.f41255f.a(c10)) {
                    throw new AssertionError();
                }
                c5362Ix.f41255f = abstractC5361Iw0;
                return;
            }
            return;
        }
        if (!AbstractC10458yg.f54101d && c10.u()) {
            throw new AssertionError();
        }
        abstractC5361Iw0 = c10;
        if (abstractC5361Iw0.i()) {
        }
    }

    public final C5304Hx a() {
        ((C11245i) this.f40927a.f()).e().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5304Hx.this.a((com.android.tools.r8.graph.H2) obj);
            }
        });
        this.f40931e.f46730c.clear();
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a1 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(com.android.tools.r8.graph.H5 h52) {
        AbstractC5361Iw0 abstractC5361Iw0;
        C5478Kx c5478Kx;
        C10601zX c10601zX = this.f40930d;
        c10601zX.getClass();
        C8622ng b10 = c10601zX.a(h52.getReference()).b();
        if (b10 != null) {
            for (int i10 = 0; i10 < b10.f51020c.size(); i10++) {
                AbstractC10458yg c10 = ((AbstractC5361Iw0) b10.f51020c.get(i10)).c();
                if (c10 != null) {
                    if (c10.t()) {
                        c10.f54102b = Collections.EMPTY_SET;
                        if (c10.u()) {
                            abstractC5361Iw0 = c10.q();
                        } else if (!c10.t() && c10.v() && c10.f54103c) {
                            abstractC5361Iw0 = c10.r();
                        }
                        c5478Kx = (C5478Kx) ((SG) this.f40933g.getOrDefault(h52.getReference(), UG.f44715a)).get(i10);
                        if (c5478Kx == null) {
                            AbstractC5361Iw0 d10 = c5478Kx.d();
                            d10.getClass();
                            if (d10 instanceof C10671zv0) {
                                continue;
                            } else {
                                if (!f40926h && !c5478Kx.d().a(c10)) {
                                    throw new AssertionError();
                                }
                                c5478Kx.a(abstractC5361Iw0);
                            }
                        } else {
                            continue;
                        }
                    }
                    if (!AbstractC10458yg.f54101d && c10.u()) {
                        throw new AssertionError();
                    }
                    abstractC5361Iw0 = c10;
                    c5478Kx = (C5478Kx) ((SG) this.f40933g.getOrDefault(h52.getReference(), UG.f44715a)).get(i10);
                    if (c5478Kx == null) {
                    }
                }
            }
        }
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5304Hx.this.a((com.android.tools.r8.graph.F5) obj);
            }
        };
        h22.getClass();
        h22.f(consumer, EnumC6871d70.f47286b);
        h22.l(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5304Hx.this.a((com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.F5 f52) {
        AbstractC6333Zs0 a10;
        AbstractC5361Iw0 a11 = this.f40929c.a(f52);
        if (a11.i() || (a11 instanceof C10671zv0)) {
            return;
        }
        AbstractC10458yg c10 = a11.c();
        if (c10.t()) {
            C5362Ix a12 = a(f52, c10);
            ArrayList a13 = AT.a(c10.s(), this.f40931e);
            int size = a13.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = a13.get(i10);
                i10++;
                ZC zc2 = (ZC) obj;
                if (zc2.x()) {
                    a10 = a(zc2.D(), a12, AB.f38557a);
                } else if (zc2.o()) {
                    a10 = a(zc2.C(), a12, AB.f38557a);
                } else {
                    a10 = a(zc2.f(), a12);
                }
                if (a10.c()) {
                    if (!f40926h && !a12.g()) {
                        throw new AssertionError();
                    }
                    return;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ab, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(com.android.tools.r8.graph.H5 h52) {
        AbstractC6333Zs0 a10;
        C10601zX c10601zX = this.f40930d;
        c10601zX.getClass();
        InterfaceC10100wX a11 = c10601zX.a(h52.getReference());
        if (a11.g() || a11.isUnknown()) {
            return;
        }
        C8622ng b10 = a11.b();
        List list = b10.f51020c;
        for (int i10 = 0; i10 < list.size(); i10++) {
            AbstractC5361Iw0 abstractC5361Iw0 = (AbstractC5361Iw0) list.get(i10);
            if (!abstractC5361Iw0.i() && !(abstractC5361Iw0 instanceof C10671zv0) && !abstractC5361Iw0.n()) {
                AbstractC10458yg c10 = abstractC5361Iw0.c();
                if (c10.t()) {
                    C5478Kx a12 = a(h52, i10, b10);
                    ArrayList a13 = AT.a(c10.s(), this.f40931e);
                    int size = a13.size();
                    int i11 = 0;
                    while (true) {
                        if (i11 < size) {
                            Object obj = a13.get(i11);
                            i11++;
                            ZC zc2 = (ZC) obj;
                            if (zc2.x()) {
                                a10 = a(zc2.D(), a12, AB.f38557a);
                            } else if (zc2.o()) {
                                a10 = a(zc2.C(), a12, AB.f38557a);
                            } else {
                                a10 = a(zc2.f(), a12);
                            }
                            if (a10.c()) {
                                if (!f40926h && !a12.g()) {
                                    throw new AssertionError();
                                }
                            }
                        }
                    }
                } else {
                    continue;
                }
            }
        }
    }

    public static C5362Ix b(com.android.tools.r8.graph.F5 f52, AbstractC5361Iw0 abstractC5361Iw0) {
        return new C5362Ix(f52, abstractC5361Iw0);
    }

    public final AbstractC6333Zs0 a(final r rVar, final AbstractC5420Jx abstractC5420Jx) {
        return rVar.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5304Hx.this.a(abstractC5420Jx, rVar, (Q5) obj);
            }
        });
    }

    public final AbstractC6333Zs0 a(AbstractC5420Jx abstractC5420Jx, r rVar, Q5 q52) {
        if (q52.x()) {
            return a(q52.D(), abstractC5420Jx, rVar);
        }
        if (f40926h || q52.o()) {
            return a(q52.C(), abstractC5420Jx, rVar);
        }
        throw new AssertionError();
    }

    public final AbstractC6333Zs0 a(C5765Pw c5765Pw, AbstractC5420Jx abstractC5420Jx, r rVar) {
        boolean z10 = f40926h;
        if (!z10 && abstractC5420Jx.g()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.F0 a10 = this.f40927a.a(c5765Pw.f43410a);
        boolean z11 = com.android.tools.r8.graph.F5.f36288f;
        com.android.tools.r8.graph.F5 W10 = a10 != null ? a10.W() : null;
        if (W10 == null) {
            if (z10) {
                return C6276Ys0.f46097c;
            }
            throw new AssertionError();
        }
        AbstractC5361Iw0 a11 = this.f40929c.a(W10);
        if ((a11 instanceof C10671zv0) && W10.getReference().getType().a(abstractC5420Jx.e())) {
            Iterator<E> it = abstractC5420Jx.f41532a.iterator();
            while (it.hasNext()) {
                ((AbstractC5420Jx) it.next()).f41533b.remove(abstractC5420Jx);
            }
            abstractC5420Jx.f41532a.clear();
            abstractC5420Jx.a(C10671zv0.f54579b);
            return C6162Ws0.f45559c;
        }
        abstractC5420Jx.a(rVar, a(W10, a11));
        return C6276Ys0.f46097c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C5362Ix a(final com.android.tools.r8.graph.F5 f52, final AbstractC5361Iw0 abstractC5361Iw0) {
        return (C5362Ix) this.f40932f.computeIfAbsent(f52.getReference(), TU.a(new Supplier() {
            @Override
            public final Object get() {
                return C5304Hx.b(com.android.tools.r8.graph.F5.this, abstractC5361Iw0);
            }
        }));
    }

    public final C5478Kx a(final com.android.tools.r8.graph.H5 h52, final int i10, final InterfaceC10100wX interfaceC10100wX) {
        return (C5478Kx) ((SG) this.f40933g.computeIfAbsent(h52.getReference(), TU.a(new C6565bG0()))).compute(Integer.valueOf(i10), new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C5304Hx.a(com.android.tools.r8.graph.H5.this, interfaceC10100wX, i10, (Integer) obj, (C5478Kx) obj2);
            }
        });
    }

    public static C5478Kx a(com.android.tools.r8.graph.H5 h52, InterfaceC10100wX interfaceC10100wX, int i10, Integer num, C5478Kx c5478Kx) {
        return c5478Kx != null ? c5478Kx : new C5478Kx(h52, interfaceC10100wX, i10, h52.a(i10));
    }
}
