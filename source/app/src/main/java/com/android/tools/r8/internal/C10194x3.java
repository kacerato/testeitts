package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C10194x3 {

    public static final boolean f53678c = true;

    public final C4798y f53679a;

    public final D3 f53680b;

    public C10194x3(C4798y c4798y, D3 d32) {
        this.f53679a = c4798y;
        this.f53680b = d32;
    }

    public final void a(final C9693u3 c9693u3, final O60 o60) {
        final AbstractC5308Hz v10 = this.f53679a.v();
        final C8570nJ E10 = this.f53679a.E();
        Iterator<com.android.tools.r8.graph.H2> it = ((C11245i) this.f53679a.f()).d().iterator();
        while (it.hasNext()) {
            it.next().h(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10194x3.this.a(c9693u3, E10, o60, v10, (com.android.tools.r8.graph.H5) obj);
                }
            }, new u.P0());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(C9693u3 c9693u3, C8570nJ c8570nJ, O60 o60, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.H5 h52) {
        int i10;
        if (h52.d().Q0().B0()) {
            return;
        }
        if (c9693u3 != null) {
            if (c9693u3.f52774n.containsKey(c9693u3.c(h52.getReference()))) {
                if (!f53678c && !this.f53679a.a(h52).a(h52)) {
                    throw new AssertionError();
                }
                o60.f42781a.a(abstractC5308Hz, h52);
                this.f53679a.H().f50869d1.accept(h52);
                return;
            }
        }
        F8 j10 = h52.A().j();
        C7765iX c7765iX = (C7765iX) this.f53680b.f39428b.getOrDefault(h52.getReference(), C7765iX.f48960b);
        c7765iX.getClass();
        j10.getClass();
        if (j10 instanceof C7954jg) {
            C7954jg a10 = j10.a();
            while (true) {
                C4516j1 d10 = h52.d();
                if (i10 >= d10.getReference().a(d10.w0())) {
                    return;
                } else {
                    i10 = (j10.a(i10).r() || ((AbstractC9366s50) c7765iX.f48962a.getOrDefault(Integer.valueOf(i10), C8856p2.f51414a)).a(h52, a10, i10, h52.a(i10))) ? 0 : i10 + 1;
                }
            }
            if (this.f53679a.a(h52).a(h52)) {
                o60.f42781a.a(abstractC5308Hz, h52);
                this.f53679a.H().f50869d1.accept(h52);
            }
        }
    }

    public final void a(O60 o60, AbstractC5308Hz abstractC5308Hz, C9693u3 c9693u3, List list, com.android.tools.r8.graph.H5 h52) {
        C9093qU c9093qU = o60.f42781a;
        boolean z10 = C9093qU.f51788e;
        if (!z10) {
            if (!z10) {
                if (c9093qU.f51791c != abstractC5308Hz) {
                    throw new AssertionError();
                }
            } else {
                c9093qU.getClass();
            }
        }
        if (c9093qU.f51792d.contains(h52.getReference())) {
            return;
        }
        C10027w3 c10027w3 = new C10027w3(this.f53679a, h52, c9693u3);
        h52.a(c10027w3);
        if (c10027w3.f37241e.booleanValue()) {
            if (!f53678c && h52.A().w()) {
                throw new AssertionError();
            }
            list.add(h52);
        }
    }

    public final void a(final C9693u3 c9693u3, final O60 o60, ExecutorService executorService) {
        final AbstractC5308Hz v10 = this.f53679a.v();
        C5467Kr0.a(((C11245i) this.f53679a.f()).d(), new InterfaceC6217Xr0() {
            @Override
            public final Object apply(Object obj) {
                return C10194x3.this.a(o60, v10, c9693u3, (com.android.tools.r8.graph.H2) obj);
            }
        }, this.f53679a.E().G(), executorService).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                O60.this.a((List) obj, v10);
            }
        });
    }

    public final List a(final O60 o60, final AbstractC5308Hz abstractC5308Hz, final C9693u3 c9693u3, com.android.tools.r8.graph.H2 h22) {
        final ArrayList arrayList = new ArrayList();
        h22.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10194x3.this.a(o60, abstractC5308Hz, c9693u3, arrayList, (com.android.tools.r8.graph.H5) obj);
            }
        }, new u.P0());
        return arrayList;
    }

    public final void a(ExecutorService executorService) {
        com.android.tools.r8.J.a(this.f53679a, ((C11245i) this.f53679a.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10194x3.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        h22.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10194x3.this.a((com.android.tools.r8.graph.H5) obj);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10194x3.a((C4516j1) obj);
            }
        });
    }

    public static boolean a(C4516j1 c4516j1) {
        return c4516j1.b1() && !c4516j1.Q0().B0();
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        AbstractC4497i0 Q02 = h52.d().Q0();
        if (!Q02.A0()) {
            if (f53678c) {
                return;
            }
            C4798y c4798y = this.f53679a;
            c4798y.getClass();
            if (!c4798y.a(h52.d())) {
                throw new AssertionError();
            }
            return;
        }
        WS o02 = Q02.o0();
        WS a10 = a(h52, o02);
        if (U30.a(o02, a10)) {
            h52.a(a10, this.f53679a);
        }
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52, YS ys) {
        if (!(ys instanceof C4554l1)) {
            return false;
        }
        C4554l1 c4554l1 = (C4554l1) ys;
        C11245i c11245i = (C11245i) this.f53679a.f();
        c11245i.getClass();
        com.android.tools.r8.graph.F5 o10 = c11245i.a(c4554l1.f38297f, c4554l1, h52).o();
        if (o10 != null) {
            F1 f10 = o10.d().f37207l.f();
            f10.getClass();
            if (f10 instanceof A7) {
                return true;
            }
        }
        return false;
    }

    public final WS a(final com.android.tools.r8.graph.H5 h52, WS ws) {
        com.android.tools.r8.graph.F5 o10;
        if (!X3.a((Object[]) ws.f45405g, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10194x3.this.a(h52, (YS) obj);
            }
        })) {
            return ws;
        }
        C4798y c4798y = this.f53679a;
        C7215fB a10 = ws.a(h52, c4798y, EW.b(c4798y));
        C10696a c10696a = new C10696a();
        Z5 u10 = a10.u();
        Set<W5> c10 = AbstractC5513Ll0.c();
        while (u10.f46159b.hasNext()) {
            W5 w52 = (W5) u10.f46159b.next();
            u10.f46160c = w52;
            if (!c10.contains(w52)) {
                Y5 I10 = w52.I();
                while (I10.hasNext()) {
                    AbstractC7670hw S10 = ((AbstractC10561zE) I10.next()).S();
                    if (S10 != null && (o10 = S10.c(this.f53679a, h52).o()) != null) {
                        F1 f10 = o10.d().f37207l.f();
                        f10.getClass();
                        if (f10 instanceof A7) {
                            if (S10.h2() != o10.getAccessFlags().n()) {
                                I10.next();
                                I10.a(this.f53679a, a10, u10, c10, c10696a);
                            } else {
                                I10.a(this.f53679a, a10, u10, c10, c10696a);
                            }
                        }
                    }
                }
            }
        }
        a10.b((Collection<W5>) c10);
        c10696a.a(this.f53679a, a10, C6628bi.b());
        a10.x();
        return (WS) new C9717uB(this.f53679a).a(a10, C9875v8.b(), C8659ns0.c());
    }
}
