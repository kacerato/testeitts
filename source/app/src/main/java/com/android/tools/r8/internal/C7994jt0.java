package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4401d;
import com.android.tools.r8.graph.AbstractC4572m0;
import com.android.tools.r8.graph.C4344a;
import com.android.tools.r8.graph.C4363b;
import com.android.tools.r8.graph.C4382c;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

public final class C7994jt0 extends AbstractC4572m0 {

    public static final boolean f49390f = true;

    public final C8161kt0 f49391e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7994jt0(C8161kt0 c8161kt0, com.android.tools.r8.graph.H5 h52) {
        super(c8161kt0.f49799a, h52);
        this.f49391e = c8161kt0;
    }

    public static AbstractC4401d b(C4460g1 c4460g1) {
        return new C4344a();
    }

    @Override
    public final void a(InterfaceC5368Ja interfaceC5368Ja) {
        a(interfaceC5368Ja.getField(), false, false, ((com.android.tools.r8.graph.H5) this.f37177b).d().Q0().a(interfaceC5368Ja));
    }

    @Override
    public final void c(C4554l1 c4554l1) {
        a(c4554l1, false, true, null);
    }

    @Override
    public final void e(C4554l1 c4554l1) {
        a(c4554l1, true, false, null);
    }

    @Override
    public final void g(C4554l1 c4554l1) {
        a(c4554l1, true, true, null);
    }

    @Override
    public final void b(C4554l1 c4554l1, C9374s8 c9374s8) {
        a(c4554l1, true, false, c9374s8);
    }

    @Override
    public final void a(InterfaceC5484La interfaceC5484La) {
        a(interfaceC5484La.getField(), true, false, ((com.android.tools.r8.graph.H5) this.f37177b).d().Q0().a(interfaceC5484La));
    }

    public final void a(C4554l1 c4554l1, boolean z10, boolean z11, C9374s8 c9374s8) {
        com.android.tools.r8.graph.D3 c10 = ((C11245i) this.f49391e.f49799a.f()).c(c4554l1);
        if (c10.u()) {
            com.android.tools.r8.graph.F5 o10 = c10.o();
            C4460g1 d10 = o10.d();
            this.f37176a.E();
            com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
            if (d10.w0() == z10) {
                C4798y c4798y = this.f37176a;
                c4798y.getClass();
                if (!c4798y.a(h52.d()) && (c10 instanceof com.android.tools.r8.graph.F3) && !c10.a(h52, this.f49391e.f49799a).b() && this.f49391e.f49799a.a(h52).a(h52)) {
                    if (c9374s8 != null) {
                        if (c9374s8.f52283a != null && !o10.d().f37207l.g().d().f()) {
                            Iterator it = c9374s8.f52283a.iterator();
                            while (it.hasNext()) {
                                com.android.tools.r8.graph.A2 d11 = this.f37176a.v().d(this.f37176a.f38414g, (com.android.tools.r8.graph.A2) it.next());
                                com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f37176a.g(d11.s0()));
                                com.android.tools.r8.graph.H5 e10 = a10 != null ? a10.e(d11) : null;
                                if (e10 == null) {
                                    if (!f49390f) {
                                        throw new AssertionError();
                                    }
                                } else if (!e10.d().w0()) {
                                }
                            }
                            ((AbstractC8374m80) this.f49391e.f49801c.computeIfAbsent(o10.d(), TU.a(new C7123eg1()))).add((AbstractC8374m80) this.f37177b);
                            return;
                        }
                        if (c9374s8.f52284b) {
                            return;
                        }
                    }
                    if (this.f37176a.a(o10).a(this.f49391e.f49799a, o10)) {
                        if (o10.getAccessFlags().n() != z10) {
                            a(d10);
                        } else if (z11) {
                            C8161kt0 c8161kt0 = this.f49391e;
                            a(d10, c8161kt0.f49803e, c8161kt0.f49802d);
                        } else {
                            C8161kt0 c8161kt02 = this.f49391e;
                            a(d10, c8161kt02.f49802d, c8161kt02.f49803e);
                        }
                    }
                    if (this.f49391e.f49804f.contains(d10) || (!z11 && this.f49391e.f49805g.contains(d10))) {
                        this.f49391e.f49806h.add((C7873j80) this.f37177b);
                        return;
                    }
                    return;
                }
            }
            this.f49391e.f49804f.remove(d10);
            if (this.f37176a.a(o10).a(this.f49391e.f49799a, o10)) {
                a(d10);
            }
        }
    }

    public final void a(C4460g1 c4460g1, ConcurrentHashMap concurrentHashMap, ConcurrentHashMap concurrentHashMap2) {
        synchronized (c4460g1) {
            try {
                C4363b c4363b = C4363b.f37064a;
                AbstractC4401d abstractC4401d = (AbstractC4401d) concurrentHashMap2.getOrDefault(c4460g1, c4363b);
                abstractC4401d.getClass();
                if (abstractC4401d instanceof C4363b) {
                    AbstractC4401d abstractC4401d2 = (AbstractC4401d) concurrentHashMap.computeIfAbsent(c4460g1, new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            return C7994jt0.b((C4460g1) obj);
                        }
                    });
                    if (!f49390f) {
                        abstractC4401d2.getClass();
                        if (!(abstractC4401d2 instanceof C4344a)) {
                            throw new AssertionError();
                        }
                    }
                    abstractC4401d2.a().a(c4460g1.getReference(), (com.android.tools.r8.graph.H5) this.f37177b);
                } else if (!(abstractC4401d instanceof C4382c)) {
                    C4382c c4382c = C4382c.f37089a;
                    concurrentHashMap.put(c4460g1, c4382c);
                    concurrentHashMap2.put(c4460g1, c4382c);
                } else {
                    boolean z10 = f49390f;
                    if (!z10) {
                        AbstractC4401d abstractC4401d3 = (AbstractC4401d) concurrentHashMap.getOrDefault(c4460g1, c4363b);
                        abstractC4401d3.getClass();
                        if (!(abstractC4401d3 instanceof C4382c)) {
                            throw new AssertionError();
                        }
                    }
                    if (!z10) {
                        AbstractC4401d abstractC4401d4 = (AbstractC4401d) concurrentHashMap2.getOrDefault(c4460g1, c4363b);
                        abstractC4401d4.getClass();
                        if (!(abstractC4401d4 instanceof C4382c)) {
                            throw new AssertionError();
                        }
                    }
                }
            } finally {
            }
        }
    }

    public final void a(C4460g1 c4460g1) {
        synchronized (c4460g1) {
            ConcurrentHashMap concurrentHashMap = this.f49391e.f49802d;
            C4382c c4382c = C4382c.f37089a;
            concurrentHashMap.put(c4460g1, c4382c);
            this.f49391e.f49803e.put(c4460g1, c4382c);
        }
    }

    @Override
    public final void a(C4554l1 c4554l1) {
        a(c4554l1, false, false, null);
    }

    @Override
    public final void a(C4554l1 c4554l1, C9374s8 c9374s8) {
        a(c4554l1, false, false, c9374s8);
    }
}
