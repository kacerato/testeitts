package com.android.tools.r8.graph;

import com.android.tools.r8.graph.Z4;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;

public final class U4 {

    public static final boolean f36866e = true;

    public final Function f36867a;

    public final C4724u1 f36868b;

    public final boolean f36869c;

    public final boolean f36870d;

    public U4(Function function, C4724u1 c4724u1, boolean z10, boolean z11) {
        this.f36867a = function;
        this.f36868b = c4724u1;
        this.f36869c = z10;
        this.f36870d = z11;
    }

    public static U4 a(C4724u1 c4724u1, final Function function) {
        return new U4(new Function() {
            @Override
            public final Object apply(Object obj) {
                return U4.a(Function.this, (M2) obj);
            }
        }, c4724u1, false, false);
    }

    public final Z4 b(M2 m22, final I2 i22, final L2 l22) {
        if (m22.E0()) {
            return C4388c5.f37097d;
        }
        boolean z10 = Z4.f37016a;
        final W4 w42 = new W4();
        ((InterfaceC4364b0) this.f36867a.apply(m22)).a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                U4.this.b(w42, i22, l22, (E0) obj);
            }
        });
        return w42.a(X4.f36961c, Collections.singletonList(m22));
    }

    public static InterfaceC4364b0 a(Function function, M2 m22) {
        E0 e02 = (E0) function.apply(m22);
        return e02 == null ? Z.f37008b : e02;
    }

    public final Z4 a(final A2 a22) {
        M2 m22 = a22.f38297f;
        if (m22.E0()) {
            I2 y02 = a22.y0();
            L2 t02 = a22.t0();
            if (!f36866e && !m22.E0()) {
                throw new AssertionError();
            }
            C4724u1 c4724u1 = this.f36868b;
            if (c4724u1.f38050g0.g(t02) && y02.n0().isEmpty() && c4724u1.f38068i2.a(y02.o0())) {
                return V4.f36909b;
            }
            return a(this.f36868b.f38068i2, y02, t02);
        }
        boolean z10 = Z4.f37016a;
        final W4 w42 = new W4();
        ((InterfaceC4364b0) this.f36867a.apply(m22)).a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                U4.this.a(w42, a22, (E0) obj);
            }
        });
        return w42.a(X4.f36961c, Collections.singletonList(m22));
    }

    public final void b(W4 w42, I2 i22, L2 l22, E0 e02) {
        if (!e02.isInterface()) {
            w42.a(C4388c5.f37097d);
        } else {
            w42.a(b(e02, i22, l22));
        }
    }

    public final Z4 b(final E0 e02, final I2 i22, final L2 l22) {
        if (!f36866e && !e02.isInterface()) {
            throw new AssertionError();
        }
        C4516j1 a10 = e02.f36252l.f36638b.a(i22, l22);
        if (a10 != null) {
            return Z4.a(e02, e02, a10);
        }
        boolean z10 = Z4.f37016a;
        final W4 w42 = new W4();
        ((InterfaceC4364b0) this.f36867a.apply(this.f36868b.f38068i2)).a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                U4.this.a(i22, l22, w42, e02, (E0) obj);
            }
        });
        return w42.a(X4.f36961c, Collections.EMPTY_SET);
    }

    public final void a(W4 w42, A2 a22, E0 e02) {
        Z4 a10;
        if (e02.isInterface()) {
            a10 = b(e02, a22.y0(), a22.t0());
        } else {
            a10 = a(e02, a22.y0(), a22.t0());
        }
        w42.a(a10);
    }

    public final Z4 a(M2 m22, final I2 i22, final L2 l22) {
        if (m22.E0()) {
            if (!f36866e && !m22.E0()) {
                throw new AssertionError();
            }
            C4724u1 c4724u1 = this.f36868b;
            if (c4724u1.f38050g0.g(l22) && i22.n0().isEmpty() && c4724u1.f38068i2.a(i22.o0())) {
                return V4.f36909b;
            }
            return a(this.f36868b.f38068i2, i22, l22);
        }
        boolean z10 = Z4.f37016a;
        final W4 w42 = new W4();
        ((InterfaceC4364b0) this.f36867a.apply(m22)).a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                U4.this.a(w42, i22, l22, (E0) obj);
            }
        });
        return w42.a(X4.f36961c, Collections.singletonList(m22));
    }

    public final void a(W4 w42, I2 i22, L2 l22, E0 e02) {
        if (e02.isInterface()) {
            w42.a(C4388c5.f37097d);
        } else {
            w42.a(a(e02, i22, l22));
        }
    }

    public final Z4 a(E0 e02, I2 i22, L2 l22) {
        if (!f36866e && e02.isInterface()) {
            throw new AssertionError();
        }
        Z4 a10 = a(e02, i22, l22, e02);
        if (a10 != null) {
            return a10;
        }
        R4 r42 = new R4(this.f36868b, this.f36867a);
        a(i22, l22, e02, r42, e02.f36247g, Arrays.asList(e02.f36248h.f36675b));
        return r42.a(e02);
    }

    public final Z4 a(final E0 e02, final I2 i22, final L2 l22, final E0 e03) {
        C4516j1 c4516j1;
        C4516j1 next;
        C4724u1 c4724u1 = this.f36868b;
        if (e02.f36245e.a(c4724u1.f37920O2) || e02.f36245e.a(c4724u1.f37913N2)) {
            Iterator<C4516j1> it = e02.D1().iterator();
            c4516j1 = null;
            loop0: while (true) {
                C4516j1 c4516j12 = c4516j1;
                while (it.hasNext()) {
                    next = it.next();
                    if (next.getReference().f38298g == l22) {
                        if (c4516j12 != null) {
                            break loop0;
                        }
                        if (e02.a(next, c4724u1)) {
                            break;
                        }
                        c4516j12 = next;
                    }
                }
                c4516j1 = next;
            }
        }
        c4516j1 = null;
        if (c4516j1 != null) {
            return Z4.a(e03, e02, c4516j1);
        }
        C4516j1 a10 = e02.f36252l.f36638b.a(i22, l22);
        if (a10 != null) {
            a10.L0();
            if (a10.f37314g.h() && e02 != e03) {
                return new C4369b5(e03, a10);
            }
            return Z4.a(e03, e02, a10);
        }
        if (e02.f36247g == null) {
            return null;
        }
        boolean z10 = Z4.f37016a;
        final W4 w42 = new W4();
        ((InterfaceC4364b0) this.f36867a.apply(e02.f36247g)).a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                U4.this.a(e02, i22, l22, e03, w42, (E0) obj);
            }
        });
        return w42.a((Z4.a) null, Collections.singletonList(e02.f36247g));
    }

    public final void a(E0 e02, I2 i22, L2 l22, E0 e03, W4 w42, E0 e04) {
        Z4 a10;
        if ((this.f36869c && e02.f0() && !e04.f0()) || (a10 = a(e04, i22, l22, e03)) == null) {
            return;
        }
        w42.a(a10);
    }

    public final void a(I2 i22, L2 l22, final E0 e02, R4 r42, M2 m22, List list) {
        final T4 t42;
        if (this.f36870d) {
            t42 = new T4(this.f36867a, this.f36869c);
            list.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    T4.this.a((M2) obj, e02);
                }
            });
            if (m22 != null) {
                t42.a(e02, Collections.EMPTY_SET, m22);
            }
        } else {
            t42 = Q4.f36721f;
        }
        a(i22, l22, e02, r42, m22, list, t42);
    }

    public final void a(final I2 i22, final L2 l22, final E0 e02, final R4 r42, M2 m22, List list, final T4 t42) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final M2 m23 = (M2) it.next();
            final InterfaceC4364b0 interfaceC4364b0 = (InterfaceC4364b0) this.f36867a.apply(m23);
            interfaceC4364b0.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    U4.this.a(e02, interfaceC4364b0, r42, m23, i22, l22, t42, (E0) obj);
                }
            });
        }
        if (m22 != null) {
            ((InterfaceC4364b0) this.f36867a.apply(m22)).a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    U4.this.a(e02, i22, l22, r42, t42, (E0) obj);
                }
            });
        }
    }

    public final void a(E0 e02, InterfaceC4364b0 interfaceC4364b0, R4 r42, M2 m22, I2 i22, L2 l22, T4 t42, E0 e03) {
        if (!this.f36869c || e02 == null || !e02.f0() || e03.f0()) {
            if (interfaceC4364b0.n()) {
                r42.f36775d.add(m22);
            }
            if (!f36866e && !e03.isInterface()) {
                throw new AssertionError();
            }
            C4516j1 a10 = e03.f36252l.f36638b.a(i22, l22);
            if (a10 != null && !a10.f37314g.h() && !a10.f37314g.n()) {
                if (t42.a(e03)) {
                    if (r42.f36773b.containsKey(e03)) {
                        return;
                    }
                    r42.f36773b.put(e03, a10);
                    return;
                }
                if (r42.f36772a.containsKey(e03)) {
                    return;
                }
                r42.f36772a.put(e03, a10);
                boolean z10 = R4.f36771f;
                if (!z10 && !e03.isInterface()) {
                    throw new AssertionError();
                }
                if (!z10 && e03.f36247g != r42.f36776e.f38068i2) {
                    throw new AssertionError();
                }
                for (M2 m23 : e03.f36248h.f36675b) {
                    r42.a(m23);
                }
                return;
            }
            a(i22, l22, e03, r42, e03.f36247g, Arrays.asList(e03.f36248h.f36675b), t42);
        }
    }

    public final void a(E0 e02, I2 i22, L2 l22, R4 r42, T4 t42, E0 e03) {
        if (!this.f36869c || e02 == null || !e02.f0() || e03.f0()) {
            a(i22, l22, e03, r42, e03.f36247g, Arrays.asList(e03.f36248h.f36675b), t42);
        }
    }

    public final void a(I2 i22, L2 l22, W4 w42, E0 e02, E0 e03) {
        C4516j1 a10 = e03.f36252l.f36638b.a(i22, l22);
        if (a10 != null && a10.f37314g.l() && !a10.f37314g.H()) {
            w42.a(Z4.a(e02, e03, a10));
            return;
        }
        R4 r42 = new R4(this.f36868b, this.f36867a);
        a(i22, l22, e02, r42, e02.f36247g, Arrays.asList(e02.f36248h.f36675b));
        w42.a(r42.a(e02));
    }
}
