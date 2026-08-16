package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4500i3;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4553l0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4615o5;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11126b;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public abstract class AbstractC9447sd extends AbstractC6662bt0 {

    public static final boolean f52410m = true;

    public final C9114qd f52411f;

    public final C4387c4 f52412g;

    public final AbstractC8780od f52413h;

    public final InterfaceC6762cW f52414i;

    public final IdentityHashMap f52415j;

    public final C5058Dq f52416k;

    public final C4942Bq f52417l;

    public AbstractC9447sd(C4798y c4798y, C9114qd c9114qd, C4387c4 c4387c4, AbstractC8780od abstractC8780od, InterfaceC6762cW interfaceC6762cW) {
        super(c4798y);
        this.f52415j = new IdentityHashMap();
        this.f52416k = new C5058Dq(new HashSet());
        this.f52417l = new C4942Bq();
        this.f52411f = c9114qd;
        this.f52412g = c4387c4;
        this.f52413h = abstractC8780od;
        this.f52414i = interfaceC6762cW;
    }

    public static boolean a(UY uy, com.android.tools.r8.graph.A2 a22) {
        return !((C9201r6) uy).f51964b.containsValue(AbstractC9280rd.a(a22, a22));
    }

    public abstract void a(com.android.tools.r8.graph.H2 h22, Set set, C4942Bq c4942Bq);

    public final AbstractC8947pd b() {
        return this.f52413h.a(this.f46881a, this.f52414i);
    }

    public void c() {
    }

    public void d() {
    }

    public final void b(com.android.tools.r8.graph.H2 h22) {
        if (h22.d1()) {
            C4500i3 O02 = h22.O0();
            InterfaceC6762cW interfaceC6762cW = this.f52414i;
            com.android.tools.r8.graph.A2 a22 = O02.f37290b;
            if (interfaceC6762cW.c(a22 != null ? a22.s0() : O02.f37289a)) {
                h22.f36253m = null;
            } else {
                h22.f36253m = a(O02);
            }
        }
        h22.f36254n = a((List) h22.Q0());
        C4615o5 U02 = h22.U0();
        h22.f36255o = U02 != null ? new C4615o5(a(U02.a())) : null;
        h22.f36256p = b(h22.V0());
        h22.f36257q = c(h22.W0());
    }

    public final void c(com.android.tools.r8.graph.H2 h22) {
        if (h22.i1()) {
            com.android.tools.r8.graph.M2 a10 = a(h22.a1());
            if (!a10.a(h22.a1())) {
                this.f52415j.put(h22, h22.a1());
                h22.f36247g = a10;
            }
        }
        h22.f36248h = a(h22, h22.R0());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v3, types: [com.android.tools.r8.graph.E0] */
    public boolean d(com.android.tools.r8.graph.H2 h22) {
        if (h22.isInterface()) {
            return false;
        }
        if (!h22.i1()) {
            return true;
        }
        C4798y c4798y = this.f46881a;
        com.android.tools.r8.graph.M2 a12 = h22.a1();
        c4798y.getClass();
        com.android.tools.r8.graph.M2 m22 = h22.f36245e;
        com.android.tools.r8.graph.H2 h23 = h22;
        if (a12 != m22) {
            h23 = c4798y.a(a12);
        }
        return com.android.tools.r8.graph.H2.a((com.android.tools.r8.graph.E0) h23) == null;
    }

    public final AbstractC8947pd a(ExecutorService executorService, C8659ns0 c8659ns0) {
        if (!this.f46881a.m()) {
            return (AbstractC8947pd) c8659ns0.a("Fixup", new InterfaceC7158es0() {
                @Override
                public final Object get() {
                    return AbstractC9447sd.this.b();
                }
            });
        }
        c8659ns0.b("Fixup");
        C4798y<C11245i> M10 = this.f46881a.M();
        d();
        Collection e10 = this.f46881a.f().e();
        final Set c10 = AbstractC5513Ll0.c();
        AbstractC9907vK.c(e10, new com.android.tools.r8.graph.Tc()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC9447sd.this.a(c10, (com.android.tools.r8.graph.H2) obj);
            }
        });
        e10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC9447sd.this.b((com.android.tools.r8.graph.H2) obj);
            }
        });
        e10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC9447sd.this.c((com.android.tools.r8.graph.H2) obj);
            }
        });
        ArrayList arrayList = new ArrayList();
        for (com.android.tools.r8.graph.H2 h22 : this.f46881a.f().d()) {
            if (d(h22)) {
                arrayList.add(h22);
            }
        }
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            a((com.android.tools.r8.graph.H2) obj, c10, new C4942Bq());
        }
        if (!f52410m && !c10.containsAll(this.f46881a.f().d())) {
            throw new AssertionError();
        }
        c();
        AbstractC8947pd a10 = this.f52413h.a(M10, this.f52414i);
        new C11126b(this.f46881a, a10).a(this.f46881a.f().d(), executorService);
        c8659ns0.d();
        return a10;
    }

    public final C4516j1 b(C4516j1 c4516j1) {
        String sb2;
        C5058Dq c5058Dq = this.f52416k;
        c5058Dq.getClass();
        if (c5058Dq.f39661b.contains(c4516j1.Z0())) {
            return c4516j1;
        }
        com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
        C9406sK a10 = reference.a(this.f46882b);
        final InterfaceC6762cW interfaceC6762cW = this.f52414i;
        Objects.requireNonNull(interfaceC6762cW);
        if (JK.a(JK.a(a10.f52337b.iterator(), a10.f52338c), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return InterfaceC6762cW.this.b((com.android.tools.r8.graph.M2) obj);
            }
        }) == -1) {
            return c4516j1;
        }
        com.android.tools.r8.graph.D2 d22 = new com.android.tools.r8.graph.D2(reference);
        com.android.tools.r8.graph.F2 f22 = (com.android.tools.r8.graph.F2) this.f52417l.f39368b.get(d22);
        if (f22 == null) {
            com.android.tools.r8.graph.A2 a11 = this.f46882b.a(a(reference.f38297f), a(reference.f36127i), reference.f38298g);
            com.android.tools.r8.graph.D2 a12 = AbstractC9280rd.a(a11, a11);
            if (this.f52416k.f39661b.contains(a12) || this.f52417l.f39368b.containsValue(a12)) {
                C4724u1 c4724u1 = this.f46882b;
                String j02 = reference.t0().j0();
                c4724u1.getClass();
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 1;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(j02);
                    if (i10 > 0) {
                        sb3.append("$");
                        sb3.append(i10);
                    }
                    sb2 = sb3.toString();
                    if (((com.android.tools.r8.graph.L2) c4724u1.f38017c.get(new com.android.tools.r8.graph.L2(sb2))) == null) {
                        break;
                    }
                    i10 = i11;
                }
                f22 = new com.android.tools.r8.graph.E2(a12.f36220c.y0(), c4724u1.b(sb2));
            } else {
                f22 = a12;
            }
            if (!f52410m && this.f52417l.f39368b.containsValue(f22)) {
                throw new AssertionError();
            }
            this.f52417l.f39368b.put(d22, f22);
        }
        com.android.tools.r8.graph.A2 a13 = this.f46882b.a(reference.f38297f, f22.b(), f22.a());
        this.f52413h.a(reference, a13);
        if (a13.a(reference)) {
            return c4516j1;
        }
        C4724u1 c4724u12 = this.f46882b;
        c4516j1.L0();
        return c4516j1.a(a13, c4724u12, (Consumer) null);
    }

    public final C4942Bq a(final com.android.tools.r8.graph.H2 h22, C4942Bq c4942Bq) {
        if (!f52410m && h22.isInterface()) {
            throw new AssertionError();
        }
        final C9201r6 c9201r6 = new C9201r6();
        for (C4516j1 c4516j1 : h22.z1()) {
            if (c4516j1.J0()) {
                com.android.tools.r8.graph.F2 Z02 = c4516j1.Z0();
                com.android.tools.r8.graph.F2 f22 = (com.android.tools.r8.graph.F2) c4942Bq.f39368b.get(Z02);
                if (f22 == null) {
                    com.android.tools.r8.graph.F2 f23 = (com.android.tools.r8.graph.F2) this.f52417l.f39368b.get(Z02);
                    if (f23 != null) {
                        f22 = f23;
                    }
                } else if (!f52410m && this.f52417l.f39368b.containsKey(Z02)) {
                    throw new AssertionError();
                }
                if (f22 != null) {
                    c9201r6.f51964b.a(c4516j1, f22, true);
                }
            }
            com.android.tools.r8.graph.L2 C02 = c4516j1.C0();
            com.android.tools.r8.graph.I2 a10 = a(c4516j1.X0());
            int i10 = com.android.tools.r8.graph.F2.f36286b;
            com.android.tools.r8.graph.E2 e22 = new com.android.tools.r8.graph.E2(a10, C02);
            com.android.tools.r8.graph.L2 C03 = c4516j1.C0();
            com.android.tools.r8.graph.I2 X02 = c4516j1.X0();
            if (e22.a().g(C03) && e22.b().a(X02) && !this.f52417l.f39368b.containsValue(e22) && !c4942Bq.f39368b.containsValue(e22)) {
                c9201r6.f51964b.a(c4516j1, e22, true);
            }
        }
        final C4942Bq c4942Bq2 = new C4942Bq(c4942Bq);
        com.android.tools.r8.graph.N4 b02 = h22.b0();
        b02.f36638b.c(new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC9447sd.this.d(h22, c4942Bq2, c9201r6, (C4516j1) obj);
            }
        });
        com.android.tools.r8.graph.N4 b03 = h22.b0();
        InterfaceC5422Jy interfaceC5422Jy = new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC9447sd.this.e(h22, c4942Bq2, c9201r6, (C4516j1) obj);
            }
        };
        b03.getClass();
        b03.f36639c = C4516j1.f37311v;
        b03.f36638b.b(interfaceC5422Jy);
        Set c10 = AbstractC5513Ll0.c();
        List<C4460g1> k12 = h22.k1();
        h22.f36251k.f37700b.a();
        C4460g1[] c4460g1Arr = (C4460g1[]) k12.toArray(C4460g1.f37200o);
        C4460g1[] F02 = h22.F0();
        h22.a(a(c4460g1Arr, c10));
        h22.b(a(F02, c10));
        this.f52413h.a();
        return c4942Bq2;
    }

    public final C4516j1 d(com.android.tools.r8.graph.H2 h22, final C4942Bq c4942Bq, final UY uy, C4516j1 c4516j1) {
        com.android.tools.r8.graph.F2 f22;
        C5058Dq c5058Dq = this.f52416k;
        c5058Dq.getClass();
        if (c5058Dq.f39661b.contains(c4516j1.Z0())) {
            f22 = c4516j1.Z0();
        } else {
            C9201r6 c9201r6 = (C9201r6) uy;
            com.android.tools.r8.graph.F2 f23 = (com.android.tools.r8.graph.F2) c9201r6.f51964b.get(c4516j1);
            if (f23 == null) {
                f22 = this.f46882b.a(c4516j1.C0().j0(), a(c4516j1.X0()), new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return AbstractC9447sd.this.a(uy, c4942Bq, (com.android.tools.r8.graph.F2) obj);
                    }
                });
                c9201r6.f51964b.a(c4516j1, f22, true);
            } else {
                f22 = f23;
            }
        }
        C5058Dq c5058Dq2 = this.f52416k;
        c5058Dq2.getClass();
        if (!c5058Dq2.f39661b.contains(c4516j1.Z0())) {
            C4942Bq c4942Bq2 = this.f52417l;
            c4942Bq2.getClass();
            if (!c4942Bq2.f39368b.containsKey(c4516j1.Z0())) {
                C9406sK a10 = f22.b().a(this.f46882b);
                final InterfaceC6762cW interfaceC6762cW = this.f52414i;
                Objects.requireNonNull(interfaceC6762cW);
                if (JK.a(JK.a(a10.f52337b.iterator(), a10.f52338c), new V60() {
                    @Override
                    public final boolean apply(Object obj) {
                        return InterfaceC6762cW.this.a((com.android.tools.r8.graph.M2) obj);
                    }
                }) != -1) {
                    c4942Bq.f39368b.put(c4516j1.Z0(), f22);
                }
            }
        }
        C4724u1 c4724u1 = this.f46882b;
        f22.getClass();
        com.android.tools.r8.graph.M2 type = h22.getType();
        type.getClass();
        return a(h22, c4516j1, c4724u1.a(type, f22.b(), f22.a()));
    }

    public final void a(final com.android.tools.r8.graph.H2 h22, Set set) {
        boolean z10 = f52410m;
        if (!z10 && !set.add(h22)) {
            throw new AssertionError();
        }
        C6133We0 c6133We0 = C6133We0.f45492l;
        final C4942Bq c4942Bq = new C4942Bq(0);
        final C9201r6 c9201r6 = new C9201r6();
        com.android.tools.r8.graph.N4 b02 = h22.b0();
        InterfaceC5422Jy interfaceC5422Jy = new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC9447sd.this.c(h22, c4942Bq, c9201r6, (C4516j1) obj);
            }
        };
        b02.getClass();
        b02.f36639c = C4516j1.f37311v;
        b02.f36638b.d(interfaceC5422Jy);
        com.android.tools.r8.graph.N4 b03 = h22.b0();
        b03.f36638b.e(new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC9447sd.this.b((C4516j1) obj);
            }
        });
        if (!z10 && h22.e1()) {
            throw new AssertionError();
        }
        h22.b(a(h22.F0(), AbstractC5513Ll0.c()));
        this.f52413h.a();
    }

    public final com.android.tools.r8.graph.O2 a(final com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.O2 o22) {
        final Set c10 = AbstractC5513Ll0.c();
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC9447sd.this.a(h22, c10, (com.android.tools.r8.graph.M2) obj);
            }
        };
        if (o22.isEmpty()) {
            return com.android.tools.r8.graph.O2.k0();
        }
        com.android.tools.r8.graph.M2[] m2Arr = (com.android.tools.r8.graph.M2[]) X3.a((Object[]) o22.f36675b, function, (Object[]) com.android.tools.r8.graph.M2.f36589h);
        return m2Arr != o22.f36675b ? m2Arr.length == 0 ? com.android.tools.r8.graph.O2.k0() : new com.android.tools.r8.graph.O2(m2Arr) : o22;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C4516j1 a(com.android.tools.r8.graph.H2 h22, C4516j1 c4516j1, com.android.tools.r8.graph.A2 a22) {
        if (c4516j1.b1()) {
            AbstractC4497i0 Q02 = c4516j1.Q0();
            Q02.getClass();
            if ((Q02 instanceof C4553l0) && this.f52414i.b(h22.a1())) {
                C4553l0.a(this.f46881a, (com.android.tools.r8.graph.M2) this.f52415j.getOrDefault(h22, h22.a1()), c4516j1.a(h22));
            }
        }
        com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
        if (a22.a(reference)) {
            return c4516j1;
        }
        this.f52413h.a(reference, a22);
        C4724u1 c4724u1 = this.f46882b;
        c4516j1.L0();
        C4516j1 a10 = c4516j1.a(a22, c4724u1, (Consumer) null);
        if (a10.n1()) {
            if (!f52410m && c4516j1.k1().d()) {
                throw new AssertionError();
            }
            a10.a(AbstractC9530t40.f52518b);
        }
        return a10;
    }

    @Override
    public final com.android.tools.r8.graph.M2 b(com.android.tools.r8.graph.M2 m22) {
        return this.f52414i.a(m22, m22);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C4516j1 e(com.android.tools.r8.graph.H2 h22, final C4942Bq c4942Bq, final UY uy, C4516j1 c4516j1) {
        com.android.tools.r8.graph.A2 a10;
        com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
        C5058Dq c5058Dq = this.f52416k;
        c5058Dq.getClass();
        if (c5058Dq.f39661b.contains(c4516j1.Z0())) {
            a10 = c4516j1.getReference();
        } else {
            C9201r6 c9201r6 = (C9201r6) uy;
            com.android.tools.r8.graph.F2 f22 = (com.android.tools.r8.graph.F2) c9201r6.f51964b.get(c4516j1);
            if (f22 != null) {
                C4724u1 c4724u1 = this.f46882b;
                com.android.tools.r8.graph.M2 type = h22.getType();
                type.getClass();
                a10 = c4724u1.a(type, f22.b(), f22.a());
            } else {
                com.android.tools.r8.graph.A2 a11 = a(reference);
                C5058Dq c5058Dq2 = this.f52416k;
                c5058Dq2.getClass();
                a11.getClass();
                if (!c5058Dq2.f39661b.contains(new com.android.tools.r8.graph.D2(a11))) {
                    if (!c9201r6.f51964b.containsValue(new com.android.tools.r8.graph.D2(a11))) {
                        a10 = a11;
                        if (!f52410m) {
                            if (c9201r6.f51964b.containsValue(AbstractC9280rd.a(a10, a10))) {
                                throw new AssertionError();
                            }
                        }
                        c9201r6.f51964b.a(c4516j1, AbstractC9280rd.a(a10, a10), true);
                    }
                }
                if (c4516j1.j1()) {
                    C4724u1 c4724u12 = this.f46882b;
                    AbstractC7552hC abstractC7552hC = this.f52411f.f51821a;
                    Predicate predicate = new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return AbstractC9447sd.a(UY.this, (com.android.tools.r8.graph.A2) obj);
                        }
                    };
                    c4724u12.getClass();
                    a10 = c4724u12.a(a11, abstractC7552hC, predicate, C6628bi.b());
                    if (c4516j1.Q0() instanceof AbstractC7221fD) {
                        ((AbstractC7221fD) c4516j1.Q0()).l(a10.w0() - reference.w0());
                    }
                } else {
                    a10 = this.f46882b.a(a11.t0().j0(), null, a11.y0(), a11.s0(), new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return AbstractC9447sd.this.a(c4942Bq, uy, (com.android.tools.r8.graph.A2) obj);
                        }
                    }, 0);
                }
                if (!f52410m) {
                }
                c9201r6.f51964b.a(c4516j1, AbstractC9280rd.a(a10, a10), true);
            }
        }
        return a(h22, c4516j1, a10);
    }

    public final boolean a(C4942Bq c4942Bq, UY uy, com.android.tools.r8.graph.A2 a22) {
        C5058Dq c5058Dq = this.f52416k;
        c5058Dq.getClass();
        a22.getClass();
        if (c5058Dq.f39661b.contains(new com.android.tools.r8.graph.D2(a22))) {
            return false;
        }
        if (this.f52417l.f39368b.containsValue(new com.android.tools.r8.graph.D2(a22))) {
            return false;
        }
        if (c4942Bq.f39368b.containsValue(new com.android.tools.r8.graph.D2(a22))) {
            return false;
        }
        return !((C9201r6) uy).f51964b.containsValue(new com.android.tools.r8.graph.D2(a22));
    }

    public final boolean a(UY uy, C4942Bq c4942Bq, com.android.tools.r8.graph.F2 f22) {
        return (this.f52416k.f39661b.contains(f22) || this.f52417l.f39368b.containsValue(f22) || ((C9201r6) uy).f51964b.containsValue(f22) || c4942Bq.f39368b.containsValue(f22)) ? false : true;
    }

    public final C4460g1[] a(C4460g1[] c4460g1Arr, final Set set) {
        if (c4460g1Arr != null) {
            boolean z10 = X3.f45604a;
            if (c4460g1Arr.length != 0) {
                C4460g1[] c4460g1Arr2 = new C4460g1[c4460g1Arr.length];
                for (int i10 = 0; i10 < c4460g1Arr.length; i10++) {
                    C4460g1 c4460g1 = c4460g1Arr[i10];
                    C4554l1 reference = c4460g1.getReference();
                    final C4554l1 a10 = a(reference);
                    if (!set.add(a10)) {
                        a10 = (C4554l1) ((AbstractC4744v2) this.f46882b.a(new Function() {
                            @Override
                            public final Object apply(Object obj) {
                                return AbstractC9447sd.this.a(a10, set, (com.android.tools.r8.graph.L2) obj);
                            }
                        }, a10.f38298g.j0(), (com.android.tools.r8.graph.M2) null, 0));
                        boolean add = set.add(a10);
                        if (!f52410m && !add) {
                            throw new AssertionError();
                        }
                    }
                    if (a10 != reference) {
                        this.f52413h.a(reference, a10);
                        c4460g1Arr2[i10] = c4460g1.a(this.f46881a, a10, C6628bi.b());
                    } else {
                        c4460g1Arr2[i10] = c4460g1;
                    }
                }
                return c4460g1Arr2;
            }
        }
        return C4460g1.f37200o;
    }

    public final Optional a(C4554l1 c4554l1, final Set set, com.android.tools.r8.graph.L2 l22) {
        return Optional.of(this.f46882b.a(c4554l1.f38297f, c4554l1.f37449i, l22)).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AbstractC9447sd.a(Set.this, (C4554l1) obj);
            }
        });
    }

    public static boolean a(Set set, C4554l1 c4554l1) {
        return !set.contains(c4554l1);
    }

    public final com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.H2 h22, Set set, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.M2 a10 = this.f52414i.a(m22, m22);
        if (!f52410m && a10.a(h22.getType())) {
            throw new AssertionError();
        }
        if (set.add(a10)) {
            return a10;
        }
        return null;
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(C4554l1 c4554l1, C4554l1 c4554l12) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        throw new C5417Jv0();
    }
}
