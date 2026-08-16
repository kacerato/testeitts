package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Collections;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C6721cD {

    public static final boolean f47000g = true;

    public final C4798y f47001a;

    public final Set f47002b;

    public final C8048kB f47003c;

    public final C5591Mw f47004d;

    public final C10601zX f47005e;

    public final C6555bD f47006f;

    public C6721cD(C4798y c4798y, Set set, C8048kB c8048kB, C5591Mw c5591Mw, C10601zX c10601zX, C4387c4 c4387c4, C6555bD c6555bD) {
        this.f47001a = c4798y;
        this.f47002b = set;
        this.f47003c = c8048kB;
        this.f47004d = c5591Mw;
        this.f47005e = c10601zX;
        this.f47006f = c6555bD;
    }

    public final void a(C5362Ix c5362Ix) {
        AbstractC5361Iw0 abstractC5361Iw0;
        com.android.tools.r8.graph.F5 f52 = c5362Ix.f41254e;
        AbstractC5361Iw0 abstractC5361Iw02 = c5362Ix.f41255f;
        C5591Mw c5591Mw = this.f47004d;
        c5591Mw.getClass();
        if (abstractC5361Iw02.k()) {
            Q00 d10 = abstractC5361Iw02.d();
            C7040e80 c7040e80 = c5591Mw.f42460a;
            abstractC5361Iw0 = (Q00) c7040e80.f43368b.put(new C7333fv(C5573Mn.f42399a, f52), d10);
            if (abstractC5361Iw0 == null) {
                abstractC5361Iw0 = AbstractC5361Iw0.a(f52.getReference().getType());
            }
        } else {
            abstractC5361Iw0 = (AbstractC5361Iw0) c5591Mw.f42460a.f43368b.remove(new C7333fv(C5573Mn.f42399a, f52));
            if (abstractC5361Iw0 == null) {
                abstractC5361Iw0 = AbstractC5361Iw0.a(f52.getReference().getType());
            }
        }
        if (f47000g || (abstractC5361Iw02 instanceof C10671zv0) || abstractC5361Iw02.a(abstractC5361Iw0)) {
            return;
        }
        if (!abstractC5361Iw02.j() || !abstractC5361Iw0.i()) {
            throw new AssertionError((Object) "Expected current state to be >= previous state");
        }
    }

    public final void b(final C5246Gx c5246Gx, final AbstractC5420Jx abstractC5420Jx, final Deque deque) {
        if (!f47000g && !abstractC5420Jx.f41532a.isEmpty()) {
            throw new AssertionError();
        }
        abstractC5420Jx.a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6721cD.this.a(c5246Gx, abstractC5420Jx, deque, (AbstractC5420Jx) obj, (Set) obj2);
            }
        });
        abstractC5420Jx.c();
    }

    public final boolean a(C5246Gx c5246Gx, AbstractC5420Jx abstractC5420Jx, AbstractC10458yg abstractC10458yg, final Deque deque, final AbstractC5420Jx abstractC5420Jx2, Set set) {
        InterfaceC5825Qx c5593Mx;
        AbstractC10458yg c10124wg;
        if (abstractC5420Jx.e().Q0() && !abstractC5420Jx.e().a(abstractC5420Jx2.e())) {
            abstractC10458yg.getClass();
            if (!(abstractC10458yg instanceof C7788ig)) {
                C8854p10 A10 = abstractC10458yg.g().A();
                com.android.tools.r8.graph.M2 e10 = abstractC5420Jx.e();
                C4798y c4798y = this.f47001a;
                e10.getClass();
                C10664zt a10 = AbstractC10330xt.a(this.f47001a, AbstractC8999pu0.a(e10, A10, (C4798y<?>) c4798y));
                if (abstractC10458yg instanceof C8288lg) {
                    C8288lg b10 = abstractC10458yg.b();
                    c10124wg = new C8288lg(b10.f50030f, a10, b10.p());
                } else {
                    c10124wg = new C10124wg(a10, abstractC10458yg.f().p());
                }
                abstractC10458yg = c10124wg;
            }
        }
        if (!f47000g && abstractC5420Jx2.g()) {
            throw new AssertionError();
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            r rVar = (r) it.next();
            if (!C8570nJ.b()) {
                c5593Mx = c5246Gx;
            } else if (rVar.e()) {
                if (!AbstractC5767Px.f43414a && !rVar.a() && !rVar.n() && !rVar.v()) {
                    throw new AssertionError();
                }
                c5593Mx = new C5535Lx(rVar, c5246Gx);
            } else {
                if (!AbstractC5767Px.f43414a && !rVar.z() && !rVar.t()) {
                    throw new AssertionError();
                }
                c5593Mx = new C5593Mx();
            }
            AbstractC5361Iw0 a11 = rVar.a(this.f47001a, c5593Mx, abstractC10458yg, abstractC5420Jx2.e());
            if (!a11.i() && !a11.n()) {
                if (a11 instanceof C10671zv0) {
                    abstractC5420Jx2.a(C10671zv0.f54579b);
                    abstractC5420Jx2.a(deque);
                } else {
                    AbstractC10458yg c10 = a11.c();
                    com.android.tools.r8.graph.M2 e11 = rVar.z() ? abstractC5420Jx.e() : null;
                    C4798y c4798y2 = this.f47001a;
                    InterfaceC6522b2 interfaceC6522b2 = new InterfaceC6522b2() {
                        @Override
                        public final void a() {
                            AbstractC5420Jx.this.a(deque);
                        }
                    };
                    AbstractC5361Iw0 d10 = abstractC5420Jx2.d();
                    AbstractC5361Iw0 a12 = d10.a(c4798y2, c10, e11, abstractC5420Jx2.e(), AbstractC4939Bo0.f39020a, interfaceC6522b2);
                    if (!a12.a(d10)) {
                        abstractC5420Jx2.a(a12);
                        interfaceC6522b2.a();
                    }
                }
            }
            boolean z10 = f47000g;
            if (abstractC5420Jx2.g()) {
                Iterator<E> it2 = abstractC5420Jx2.f41532a.iterator();
                while (it2.hasNext()) {
                    AbstractC5420Jx abstractC5420Jx3 = (AbstractC5420Jx) it2.next();
                    if (abstractC5420Jx3 != abstractC5420Jx) {
                        abstractC5420Jx3.f41533b.remove(abstractC5420Jx2);
                    }
                }
                abstractC5420Jx2.f41532a.clear();
                return true;
            }
            if (!z10 && abstractC5420Jx2.d().j() && abstractC5420Jx2.d().c().w()) {
                throw new AssertionError();
            }
        }
        return false;
    }

    public final List a() {
        C5304Hx b10 = new C5304Hx(this.f47001a, this.f47003c, this.f47004d, this.f47005e, this.f47006f).a().b();
        return AT.a((Collection) AT.a((Collection) new C5246Gx(b10.f40932f, b10.f40933g).a(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C6721cD.a((Set) obj);
            }
        }), new Function() {
            @Override
            public final Object apply(Object obj) {
                return new C5246Gx((LinkedHashSet) obj);
            }
        });
    }

    public static LinkedHashSet a(Set set) {
        return (LinkedHashSet) set;
    }

    public final void a(List list, ExecutorService executorService) {
        C5467Kr0.a(list, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6721cD.this.a((C5246Gx) obj);
            }
        }, this.f47001a.E().G(), executorService);
    }

    public final void a(Map map, ExecutorService executorService) {
        C5467Kr0.a(map, new InterfaceC5988Tr0() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6721cD.this.a((C5246Gx) obj, (Deque) obj2);
            }
        }, this.f47001a.E().G(), executorService);
    }

    public final void a(C5246Gx c5246Gx) {
        final ArrayDeque arrayDeque = new ArrayDeque();
        c5246Gx.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Deque.this.add((AbstractC5420Jx) obj);
            }
        });
        a(c5246Gx, arrayDeque);
    }

    public final void a(C5246Gx c5246Gx, Deque deque) {
        while (!deque.isEmpty()) {
            AbstractC5420Jx abstractC5420Jx = (AbstractC5420Jx) deque.removeLast();
            if (!AbstractC5420Jx.f41531d && !abstractC5420Jx.f41534c) {
                throw new AssertionError();
            }
            abstractC5420Jx.f41534c = false;
            if (!abstractC5420Jx.d().i() && !abstractC5420Jx.d().n()) {
                if (abstractC5420Jx.g()) {
                    b(c5246Gx, abstractC5420Jx, deque);
                } else {
                    a(c5246Gx, abstractC5420Jx, deque);
                }
            }
        }
    }

    public final void a(C5246Gx c5246Gx, AbstractC5420Jx abstractC5420Jx, Deque deque, AbstractC5420Jx abstractC5420Jx2, Set set) {
        AbstractC5361Iw0 abstractC5361Iw0;
        boolean z10 = f47000g;
        if (!z10 && !abstractC5420Jx.g()) {
            throw new AssertionError();
        }
        if (!z10 && abstractC5420Jx2.g()) {
            throw new AssertionError();
        }
        if (!z10 && !abstractC5420Jx.g()) {
            throw new AssertionError();
        }
        if (abstractC5420Jx.e().Q0() && !abstractC5420Jx.e().a(abstractC5420Jx2.e())) {
            C8854p10 b10 = abstractC5420Jx.f() ? C8854p10.b() : C8854p10.h();
            if (abstractC5420Jx.e().E0()) {
                abstractC5361Iw0 = C7788ig.a(b10);
            } else {
                com.android.tools.r8.graph.M2 e10 = abstractC5420Jx.e();
                C4798y c4798y = this.f47001a;
                e10.getClass();
                C10664zt a10 = AbstractC10330xt.a(this.f47001a, AbstractC8999pu0.a(e10, b10, (C4798y<?>) c4798y));
                int i10 = F1.f40064a;
                abstractC5361Iw0 = C8288lg.a(C10504yv0.f54195b, a10, Collections.EMPTY_SET);
            }
        } else {
            abstractC5361Iw0 = C10671zv0.f54579b;
        }
        if (abstractC5361Iw0 instanceof C10671zv0) {
            if (!z10) {
                abstractC5420Jx2.getClass();
            }
            Iterator<E> it = abstractC5420Jx2.f41532a.iterator();
            while (it.hasNext()) {
                AbstractC5420Jx abstractC5420Jx3 = (AbstractC5420Jx) it.next();
                if (abstractC5420Jx3 != abstractC5420Jx) {
                    abstractC5420Jx3.f41533b.remove(abstractC5420Jx2);
                }
            }
            abstractC5420Jx2.f41532a.clear();
            abstractC5420Jx2.a(C10671zv0.f54579b);
            abstractC5420Jx2.a(deque);
            return;
        }
        if (a(c5246Gx, abstractC5420Jx, abstractC5361Iw0.c(), deque, abstractC5420Jx2, set)) {
            if (!z10 && !abstractC5420Jx2.f41532a.isEmpty()) {
                throw new AssertionError();
            }
            return;
        }
        abstractC5420Jx2.f41532a.remove(abstractC5420Jx);
    }

    public final void a(final C5246Gx c5246Gx, final AbstractC5420Jx abstractC5420Jx, final Deque deque) {
        final AbstractC10458yg c10 = abstractC5420Jx.d().c();
        abstractC5420Jx.a(new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C6721cD.this.a(c5246Gx, abstractC5420Jx, c10, deque, (AbstractC5420Jx) obj, (Set) obj2);
            }
        });
    }

    public final void a(ExecutorService executorService) {
        com.android.tools.r8.J.a(this.f47001a, ((C11245i) this.f47001a.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6721cD.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        h22.l(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6721cD.this.a((com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        AbstractC5361Iw0 c9790ug;
        AbstractC5361Iw0 abstractC5361Iw0;
        C10601zX c10601zX = this.f47005e;
        c10601zX.getClass();
        AbstractC8455mg d10 = c10601zX.a(h52.getReference()).d();
        if (d10 == null) {
            return;
        }
        if (!f47000g && !(d10 instanceof C8622ng)) {
            throw new AssertionError();
        }
        C8622ng b10 = d10.b();
        if (b10.k()) {
            this.f47005e.a(h52, C9371s7.f52282a);
            return;
        }
        if (C8622ng.a(b10.f51020c, b10.f51019b)) {
            this.f47005e.a(h52, C9669tv0.f52729a);
            return;
        }
        for (int i10 = 0; i10 < b10.f51020c.size(); i10++) {
            AbstractC5361Iw0 abstractC5361Iw02 = (AbstractC5361Iw0) b10.f51020c.get(i10);
            if (abstractC5361Iw02.n()) {
                com.android.tools.r8.graph.M2 a10 = h52.a(i10);
                boolean z10 = f47000g;
                if (!z10) {
                    if (a10.E0()) {
                        abstractC5361Iw0 = C7337fw0.f48140b;
                    } else if (a10.I0()) {
                        abstractC5361Iw0 = C7504gw0.f48390b;
                    } else {
                        if (!AbstractC5361Iw0.f41252a && !a10.P0()) {
                            throw new AssertionError();
                        }
                        abstractC5361Iw0 = C7671hw0.f48740b;
                    }
                    if (!abstractC5361Iw02.a(abstractC5361Iw0)) {
                        throw new AssertionError();
                    }
                }
                if (a10.E0()) {
                    c9790ug = new C7788ig(C8854p10.c(), Collections.EMPTY_SET);
                } else if (a10.I0()) {
                    this.f47001a.f38427t.getClass();
                    C5283Hm0 c5283Hm0 = C5283Hm0.f40867c;
                    boolean z11 = AbstractC10330xt.f53865a;
                    c9790ug = new C8288lg(c5283Hm0, C10664zt.f54561d, Collections.EMPTY_SET);
                } else {
                    if (!z10 && !a10.P0()) {
                        throw new AssertionError();
                    }
                    c9790ug = new C9790ug(this.f47001a.f38427t.a(), Collections.EMPTY_SET);
                }
                b10.a(i10, c9790ug);
            } else if (!f47000g && abstractC5361Iw02.j()) {
                AbstractC10458yg c10 = abstractC5361Iw02.c();
                if (!c10.t() && c10.v() && c10.f54103c) {
                    throw new AssertionError();
                }
            }
        }
    }

    public final void a(List list) {
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            ((C5246Gx) it.next()).b(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C6721cD.this.a((C5362Ix) obj);
                }
            });
        }
    }
}
