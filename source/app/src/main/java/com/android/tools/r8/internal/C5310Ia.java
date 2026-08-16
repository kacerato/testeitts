package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.utils.UnverifiableCfCodeDiagnostic;
import java.util.Deque;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;

public final class C5310Ia {

    public static final boolean f41122g = true;

    public final C4798y f41123a;

    public final C4724u1 f41124b;

    public final com.android.tools.r8.graph.H5 f41125c;

    public final C8570nJ f41126d;

    public final Set f41127e = AbstractC5513Ll0.c();

    public final C7541h80 f41128f;

    public C5310Ia(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C7541h80 c7541h80) {
        this.f41123a = c4798y;
        this.f41124b = c4798y.b();
        this.f41125c = h52;
        this.f41126d = c4798y.E();
        this.f41128f = c7541h80;
    }

    public final void a(W9 w92, H9 h92) {
        boolean z10 = f41122g;
        if (!z10) {
            h92.getClass();
            if (h92 instanceof C7667hv) {
                throw new AssertionError();
            }
        }
        h92.getClass();
        if (h92 instanceof C9038q7) {
            return;
        }
        if (!z10 && !(h92 instanceof C8121kg)) {
            throw new AssertionError();
        }
        C8121kg d10 = h92.d();
        w92.getClass();
        if (w92 instanceof Z8) {
            a(w92.a(), d10);
            return;
        }
        if (w92 instanceof U9) {
            a(w92.h(), d10);
            return;
        }
        if (w92.L()) {
            a(w92.j(), d10);
            return;
        }
        if (w92.S() && !(w92 instanceof C6607bb)) {
            a(d10);
        } else if (w92 instanceof C10109wb) {
            a(w92.v(), d10);
        }
    }

    public final void a(Z8 z82, C8121kg c8121kg) {
        YV yv = z82.f45936c;
        yv.getClass();
        if (yv == YV.f45995b) {
            c8121kg.a(3, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C5310Ia.this.a((Deque) obj);
                }
            }, this.f41126d);
        }
    }

    public final void a(Deque deque) {
        InterfaceC8008jy interfaceC8008jy = (InterfaceC8008jy) deque.peekFirst();
        InterfaceC8008jy interfaceC8008jy2 = (InterfaceC8008jy) deque.peekLast();
        if (interfaceC8008jy.q()) {
            AbstractC6450ae0 a10 = interfaceC8008jy.o().a(this.f41123a);
            if (a10.r()) {
                AbstractC8999pu0 F10 = a10.a().F();
                if (interfaceC8008jy2.q()) {
                    a(interfaceC8008jy2.o().a(this.f41123a), F10);
                    return;
                }
                return;
            }
            if (!f41122g) {
                throw new AssertionError();
            }
            return;
        }
        if (!f41122g && !interfaceC8008jy.d()) {
            throw new AssertionError();
        }
    }

    public final void a(final U9 u92, C8121kg c8121kg) {
        c8121kg.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5310Ia.this.a(u92, (S60) obj);
            }
        }, this.f41126d);
    }

    public final void a(U9 u92, S60 s60) {
        com.android.tools.r8.graph.M2 type = u92.getField().getType();
        if (s60.q()) {
            a(s60.o().a(this.f41123a), type.b(this.f41123a));
        }
    }

    public final void a(final C7437ga c7437ga, C8121kg c8121kg) {
        final com.android.tools.r8.graph.A2 V10 = c7437ga.V();
        c8121kg.a(V10.a(c7437ga.O()), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5310Ia.this.a(V10, c7437ga, (Deque) obj);
            }
        }, this.f41126d);
    }

    public final void a(com.android.tools.r8.graph.A2 a22, C7437ga c7437ga, Deque deque) {
        Iterator it = deque.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            InterfaceC8008jy interfaceC8008jy = (InterfaceC8008jy) it.next();
            com.android.tools.r8.graph.M2 a10 = a22.a(i10, c7437ga.O());
            if (interfaceC8008jy.q()) {
                a(interfaceC8008jy.o().a(this.f41123a), a10.b(this.f41123a));
            }
            i10++;
        }
    }

    public final void a(S60 s60) {
        com.android.tools.r8.graph.M2 E10 = this.f41125c.E();
        if (s60.q()) {
            a(s60.o().a(this.f41123a), E10.b(this.f41123a));
        }
    }

    public final void a(C8121kg c8121kg) {
        c8121kg.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5310Ia.this.a((S60) obj);
            }
        }, this.f41126d);
    }

    public final void a(final C10109wb c10109wb, C8121kg c8121kg) {
        c8121kg.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5310Ia.this.a(c10109wb, (S60) obj);
            }
        }, this.f41126d);
    }

    public final void a(C10109wb c10109wb, S60 s60) {
        com.android.tools.r8.graph.M2 type = c10109wb.getField().getType();
        if (s60.q()) {
            a(s60.o().a(this.f41123a), type.b(this.f41123a));
        }
    }

    public final void a(final AbstractC6450ae0 abstractC6450ae0, final AbstractC8999pu0 abstractC8999pu0) {
        if (abstractC8999pu0.s()) {
            C6949de b10 = abstractC8999pu0.b();
            if (b10.E() != this.f41124b.f38068i2) {
                return;
            }
            b10.F().a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C5310Ia.this.a(abstractC6450ae0, abstractC8999pu0, (com.android.tools.r8.graph.M2) obj);
                }
            });
        }
    }

    public final void a(AbstractC8999pu0 abstractC8999pu0, AbstractC8999pu0 abstractC8999pu02, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 g10 = this.f41123a.g(m22);
        if (g10 == null) {
            return;
        }
        boolean z10 = f41122g;
        if (!z10 && !g10.isInterface()) {
            throw new AssertionError();
        }
        if (abstractC8999pu0.b(abstractC8999pu02, this.f41123a)) {
            return;
        }
        if (!z10) {
            a(abstractC8999pu0, g10);
        }
        this.f41127e.add(g10);
    }

    public final void a(com.android.tools.r8.graph.H5 h52, int i10, C7667hv c7667hv) {
        if (this.f41126d.r().f50749b) {
            C7541h80 c7541h80 = this.f41128f;
            UnverifiableCfCodeDiagnostic unverifiableCfCodeDiagnostic = new UnverifiableCfCodeDiagnostic(h52.w(), i10, c7667hv.f48735c, h52.f36317b.f36244d);
            c7541h80.getClass();
            c7541h80.f43368b.put(new C7333fv(C7374g80.f48192a, h52), unverifiableCfCodeDiagnostic);
        }
        this.f41127e.clear();
    }

    public final void a(AbstractC8999pu0 abstractC8999pu0, com.android.tools.r8.graph.E0 e02) {
        if (f41122g || this.f41126d.A().a(this.f41123a, abstractC8999pu0, e02)) {
            return;
        }
        throw new AssertionError((Object) ("Unexpected open interface " + e02.b1() + " (assignment: " + ((Object) abstractC8999pu0) + ")"));
    }
}
