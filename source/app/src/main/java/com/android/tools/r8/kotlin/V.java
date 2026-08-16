package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4500i3;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.G5;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8696o40;
import com.android.tools.r8.internal.InterfaceC7339fx;
import com.android.tools.r8.shaking.C11297l1;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class V implements InterfaceC7339fx {

    public static final C8696o40 f55193e = C8696o40.f51162b;

    public static final boolean f55194f = true;

    public final C4798y f55195a;

    public final com.android.tools.r8.shaking.I f55196b;

    public final Set f55197c;

    public final AtomicBoolean f55198d = new AtomicBoolean(false);

    public V(C4798y c4798y, com.android.tools.r8.shaking.I i10, Set set) {
        this.f55195a = c4798y;
        this.f55196b = i10;
        this.f55197c = set;
    }

    @Override
    public final void a(final com.android.tools.r8.shaking.N n10) {
        C4516j1 b10;
        C4724u1 b11 = this.f55195a.b();
        C8570nJ E10 = this.f55195a.E();
        C4477h f10 = this.f55195a.f();
        Objects.requireNonNull(f10);
        final boolean a10 = C11297l1.a(b11, E10, new u.O0(f10), new Function() {
            @Override
            public final Object apply(Object obj) {
                return com.android.tools.r8.shaking.N.this.c((com.android.tools.r8.graph.H2) obj);
            }
        });
        if (n10.f56786b.b()) {
            final Set c10 = AbstractC5513Ll0.c();
            final Set<com.android.tools.r8.graph.H2> c11 = AbstractC5513Ll0.c();
            n10.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    V.this.a(n10, a10, c10, c11, (com.android.tools.r8.graph.H2) obj);
                }
            });
            for (com.android.tools.r8.graph.H2 h22 : c11) {
                C4500i3 O02 = h22.O0();
                com.android.tools.r8.graph.E0 g10 = new U(this, h22, this.f55196b, this.f55197c).g(O02.a().f38297f);
                if (g10 != null && ((b10 = g10.b(O02.a())) == null || (b10.f37323p.j() && b10.f37323p.d().f55097i))) {
                    h22.l(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            Set.this.add(((H5) obj).getReference());
                        }
                    });
                }
            }
            if (this.f55195a.E().f50707o0) {
                C4798y c4798y = this.f55195a;
                if (!C4798y.f38385W && !c4798y.E().f50707o0) {
                    throw new AssertionError();
                }
                c4798y.f38396K = c10;
            }
        } else {
            if (!f55194f && !n10.f56786b.a()) {
                throw new AssertionError();
            }
            n10.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    V.this.a(n10, a10, (com.android.tools.r8.graph.H2) obj);
                }
            });
        }
        n10.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                V.this.a((com.android.tools.r8.graph.H2) obj);
            }
        });
    }

    public final Boolean b() {
        return Boolean.valueOf(this.f55198d.getAndSet(true));
    }

    public final boolean b(C4666r0 c4666r0) {
        return c4666r0.l0() == this.f55195a.b().f37858F3;
    }

    public final void a(com.android.tools.r8.shaking.N n10, boolean z10, final Set set, Set set2, com.android.tools.r8.graph.H2 h22) {
        InterfaceC10835p a10;
        if (!f55194f && !h22.f36369x.c()) {
            throw new AssertionError();
        }
        if (n10.f56780W.a(h22).a(this.f55195a.E(), z10)) {
            if (r.a(this.f55195a, h22, new Supplier() {
                @Override
                public final Object get() {
                    return V.this.a();
                }
            }) && h22.c1()) {
                C8696o40 c8696o40 = f55193e;
                C4516j1 L02 = h22.L0();
                c8696o40.getClass();
                L02.T0().f45466u |= 2;
            }
            h22.f36369x = AbstractC10752b0.f55256b;
            h22.f37066b = h22.k0().b(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return V.this.a((C4666r0) obj);
                }
            });
            return;
        }
        C4798y c4798y = this.f55195a;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                Set.this.add(((C4516j1) obj).getReference());
            }
        };
        Supplier supplier = new Supplier() {
            @Override
            public final Object get() {
                return V.this.b();
            }
        };
        boolean z11 = r.f55448a;
        C4666r0 a11 = h22.k0().a(c4798y.b().f37858F3);
        if (a11 == null) {
            a10 = AbstractC10752b0.f55256b;
        } else {
            a10 = r.a(c4798y, h22, a11, consumer, supplier);
        }
        boolean z12 = com.android.tools.r8.graph.H2.f36364C;
        if (!z12 && a10 == null) {
            throw new AssertionError();
        }
        if (!z12 && h22.f36369x != AbstractC10752b0.f55256b) {
            throw new AssertionError();
        }
        h22.f36369x = a10;
        if (h22.O0() == null || h22.O0().a() == null) {
            return;
        }
        set2.add(h22);
    }

    public final Boolean a() {
        return Boolean.valueOf(this.f55198d.getAndSet(true));
    }

    public final boolean a(C4666r0 c4666r0) {
        return c4666r0.l0() == this.f55195a.b().f37858F3;
    }

    public final void a(G5 g52) {
        g52.d().c0().a(new U(this, g52, this.f55196b, this.f55197c));
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        h22.f36369x.a(new U(this, h22, this.f55196b, this.f55197c));
        h22.k(new Consumer() {
            @Override
            public final void accept(Object obj) {
                V.this.a((G5) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.shaking.N n10, boolean z10, com.android.tools.r8.graph.H2 h22) {
        if (n10.f56780W.a(h22).a(this.f55195a.E(), z10)) {
            h22.f36369x = AbstractC10752b0.f55256b;
            h22.y1().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((AbstractC4479h1) obj).y0();
                }
            });
            h22.f37066b = h22.k0().b(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return V.this.b((C4666r0) obj);
                }
            });
        } else {
            if (f55194f) {
                return;
            }
            boolean z11 = r.f55448a;
            boolean c10 = h22.k0().c(this.f55195a.b().f37858F3);
            InterfaceC10835p interfaceC10835p = h22.f36369x;
            C10746a0 c10746a0 = AbstractC10752b0.f55256b;
            if (c10 != (interfaceC10835p != c10746a0)) {
                throw new AssertionError((Object) (h22.j0() + " " + (h22.f36369x == c10746a0 ? "no info" : "has info")));
            }
        }
    }
}
