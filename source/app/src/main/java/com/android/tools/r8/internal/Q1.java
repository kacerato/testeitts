package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.AbstractC11432t1;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class Q1 {

    public static final boolean f43433f = true;

    public final C4798y f43434a;

    public final C4387c4 f43435b;

    public final R1 f43436c;

    public final C5212Gg f43437d;

    public final C8570nJ f43438e;

    public Q1(C4798y c4798y) {
        boolean z10 = S1.f44059i;
        this.f43436c = new R1();
        this.f43434a = c4798y;
        this.f43435b = C4387c4.a(c4798y, ((C4514j) c4798y.f()).e());
        this.f43437d = new C5212Gg(c4798y);
        this.f43438e = c4798y.E();
    }

    public static void a(C4798y c4798y, C8659ns0 c8659ns0, ExecutorService executorService) {
        c8659ns0.b("Access modification");
        if (c4798y.E().p().a()) {
            Q1 a10 = new Q1(c4798y).a(executorService);
            R1 r12 = a10.f43436c;
            if (!r12.f43780a.f51964b.isEmpty() || !r12.f43781b.isEmpty() || !r12.f43782c.isEmpty()) {
                C4798y c4798y2 = a10.f43434a;
                R1 r13 = a10.f43436c;
                if (!R1.f43779d) {
                    if (r13.f43780a.f51964b.isEmpty() && r13.f43781b.isEmpty() && r13.f43782c.isEmpty()) {
                        throw new AssertionError();
                    }
                } else {
                    r13.getClass();
                }
                c4798y2.a(new S1(c4798y2, r13.f43780a, r13.f43781b, r13.f43782c), c4798y2.e().a(), executorService, c8659ns0);
            }
        }
        c8659ns0.d();
    }

    public final C4516j1 a(InterfaceC7200f6 interfaceC7200f6, T1 t12, V1 v12, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.L4 accessFlags = h52.getAccessFlags();
        if (!accessFlags.l() && a(h52, v12)) {
            if (h52.d().f1()) {
                return a(h52, a(h52, interfaceC7200f6, t12));
            }
            if (!h52.d().j1() && ((!accessFlags.f() || v12.b(h52)) && !accessFlags.k())) {
                if (accessFlags.h()) {
                    com.android.tools.r8.shaking.I1 a10 = this.f43434a.a(h52);
                    boolean z10 = false;
                    if (a10.c(this.f43438e) && a10.e(this.f43438e)) {
                        com.android.tools.r8.graph.L4 r10 = accessFlags.r();
                        if (!h52.getHolder().isInterface() && !accessFlags.D()) {
                            z10 = true;
                        }
                        r10.a(z10, new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                ((com.android.tools.r8.graph.L4) obj).p();
                            }
                        });
                        return a(h52, a(h52, interfaceC7200f6, t12));
                    }
                    boolean z11 = f43433f;
                    if (!z11 && !interfaceC7200f6.containsKey(h52.getReference())) {
                        throw new AssertionError();
                    }
                    if (!z11 && interfaceC7200f6.get(h52.getReference()) != h52.getReference()) {
                        throw new AssertionError();
                    }
                    if (t12.a(h52.x())) {
                        com.android.tools.r8.graph.L4 r11 = accessFlags.r();
                        if (!h52.getHolder().isInterface() && !accessFlags.D()) {
                            z10 = true;
                        }
                        r11.a(z10, new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                ((com.android.tools.r8.graph.L4) obj).p();
                            }
                        });
                        t12.f44364a.f39661b.add(h52.x());
                    }
                    return a(h52, h52.getReference());
                }
                boolean z12 = f43433f;
                if (!z12 && !accessFlags.f()) {
                    throw new AssertionError();
                }
                if (z12 || v12.b(h52)) {
                    return a(h52, a(h52, interfaceC7200f6, t12));
                }
                throw new AssertionError();
            }
            accessFlags.r();
            return a(h52, a(h52, interfaceC7200f6, t12));
        }
        return a(h52, a(h52, interfaceC7200f6, t12));
    }

    public final Q1 a(ExecutorService executorService) {
        C5467Kr0.a(new C6541b80(this.f43434a, this.f43435b).a(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                Q1.this.a((Set) obj);
            }
        }, this.f43434a.E().G(), executorService);
        return this;
    }

    public final void a(com.android.tools.r8.graph.H2 h22, final T1 t12, final V1 v12) {
        final C7045eA c7045eA = new C7045eA(16);
        h22.l(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Q1.this.a(c7045eA, (com.android.tools.r8.graph.H5) obj);
            }
        });
        h22.b0().a(new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return Q1.this.a(c7045eA, t12, v12, (com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public final void a(Set set) {
        C4798y c4798y = this.f43434a;
        Y1 y12 = new Y1(c4798y, this.f43435b, this, T1.a(c4798y, set, this.f43437d));
        Comparator comparing = Comparator.comparing(new com.android.tools.r8.errors.q());
        boolean z10 = AT.f38618a;
        ArrayList arrayList = new ArrayList(set);
        arrayList.sort(comparing);
        y12.a(arrayList);
    }

    public static boolean b(InterfaceC7200f6 interfaceC7200f6, T1 t12, com.android.tools.r8.graph.A2 a22) {
        if (interfaceC7200f6.containsValue(a22)) {
            return false;
        }
        a22.getClass();
        return t12.a(new com.android.tools.r8.graph.D2(a22));
    }

    public final void a(final V1 v12, com.android.tools.r8.graph.H2 h22) {
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                Q1.this.a(v12, (com.android.tools.r8.graph.F5) obj);
            }
        };
        h22.getClass();
        h22.f(consumer, EnumC6871d70.f47286b);
    }

    public final void a(V1 v12, com.android.tools.r8.graph.F5 f52) {
        if (!a(f52, v12) || f52.getAccessFlags().l()) {
            return;
        }
        f52.getAccessFlags().r();
    }

    public final void a(InterfaceC7200f6 interfaceC7200f6, com.android.tools.r8.graph.H5 h52) {
        if (h52.d().i1()) {
            return;
        }
        com.android.tools.r8.shaking.I1 a10 = this.f43434a.a(h52);
        if (a10.c(this.f43438e) && a10.e(this.f43438e)) {
            return;
        }
        interfaceC7200f6.put(h52.getReference(), h52.getReference());
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.H5 h52, final InterfaceC7200f6 interfaceC7200f6, final T1 t12) {
        if (h52.d().i1()) {
            return h52.getReference();
        }
        com.android.tools.r8.shaking.I1 a10 = this.f43434a.a(h52);
        if (a10.c(this.f43438e) && a10.e(this.f43438e)) {
            C4724u1 b10 = this.f43434a.b();
            if (h52.getAccessFlags().h()) {
                com.android.tools.r8.graph.A2 a11 = b10.a(h52.getReference().t0().toString(), null, h52.getReference().y0(), h52.p(), new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return Q1.a(InterfaceC7200f6.this, t12, (com.android.tools.r8.graph.A2) obj);
                    }
                }, 0);
                interfaceC7200f6.put(h52.getReference(), a11);
                return a11;
            }
            if (!h52.getAccessFlags().j()) {
                com.android.tools.r8.graph.F2 f22 = (com.android.tools.r8.graph.F2) t12.f44365b.f39368b.get(h52.x());
                if (f22 != null) {
                    C4724u1 b11 = this.f43434a.b();
                    com.android.tools.r8.graph.M2 p10 = h52.p();
                    p10.getClass();
                    return b11.a(p10, f22.b(), f22.a());
                }
            }
            com.android.tools.r8.graph.A2 a12 = b10.a(h52.getReference().t0().toString(), null, h52.getReference().y0(), h52.p(), new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return Q1.b(InterfaceC7200f6.this, t12, (com.android.tools.r8.graph.A2) obj);
                }
            }, 0);
            if (!h52.getAccessFlags().D()) {
                if (h52.getAccessFlags().j()) {
                    t12.f44364a.f39661b.add(AbstractC9280rd.a(a12, a12));
                    return a12;
                }
                t12.f44365b.f39368b.put(h52.x(), AbstractC9280rd.a(a12, a12));
            }
            return a12;
        }
        boolean z10 = f43433f;
        if (!z10 && !interfaceC7200f6.containsKey(h52.getReference())) {
            throw new AssertionError();
        }
        if (!z10 && interfaceC7200f6.get(h52.getReference()) != h52.getReference()) {
            throw new AssertionError();
        }
        if (!z10 && !h52.getAccessFlags().h()) {
            if (!h52.x().equals((com.android.tools.r8.graph.F2) t12.f44365b.f39368b.get(h52.x()))) {
                throw new AssertionError();
            }
        }
        return h52.getReference();
    }

    public static boolean a(InterfaceC7200f6 interfaceC7200f6, T1 t12, com.android.tools.r8.graph.A2 a22) {
        if (interfaceC7200f6.containsValue(a22)) {
            return false;
        }
        a22.getClass();
        return t12.a(new com.android.tools.r8.graph.D2(a22));
    }

    public final boolean a(com.android.tools.r8.graph.D5 d52, V1 v12) {
        boolean contains;
        boolean z10;
        AbstractC11432t1 a10 = this.f43434a.a(d52);
        C8570nJ c8570nJ = this.f43438e;
        a10.getClass();
        if (((!c8570nJ.f50693j1.a() || !a10.f57831a) && (!this.f43438e.p().f44650a || !d52.I() || d52.getAccessFlags().h())) || !this.f43434a.a(d52).f57832b) {
            return false;
        }
        if (d52.isClass()) {
            contains = ((C11245i) this.f43434a.f()).f57398m.contains(d52.asClass().getType());
        } else if (d52.J()) {
            contains = ((C11245i) this.f43434a.f()).f57400o.contains(d52.c().getReference());
        } else {
            if (!f43433f && !d52.I()) {
                throw new AssertionError();
            }
            contains = ((C11245i) this.f43434a.f()).f57399n.contains(d52.b().getReference());
        }
        if (contains) {
            return false;
        }
        if (!d52.isClass()) {
            U1 p10 = this.f43438e.p();
            C8570nJ c8570nJ2 = p10.f44651b;
            if (!(c8570nJ2.f50688i != null && c8570nJ2.B().f57602f)) {
                C8570nJ c8570nJ3 = p10.f44651b;
                if (c8570nJ3.f50678e1 || (c8570nJ3.f50697l instanceof ClassFileConsumer)) {
                    z10 = false;
                    if (z10 && v12.f44937a) {
                        return false;
                    }
                }
            }
            z10 = true;
            if (z10) {
            }
        }
        return true;
    }

    public final C4516j1 a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        if (a22 != h52.getReference()) {
            R1 r12 = this.f43436c;
            com.android.tools.r8.graph.A2 reference = h52.getReference();
            r12.getClass();
            if (!R1.f43779d && reference == a22) {
                throw new AssertionError();
            }
            synchronized (r12.f43780a) {
                r12.f43780a.f51964b.a(reference, a22, true);
            }
            C4516j1 d10 = h52.d();
            C4724u1 b10 = this.f43434a.b();
            d10.L0();
            h52 = new com.android.tools.r8.graph.H5(holder, d10.a(a22, b10, (Consumer) null));
        }
        if (h52.getAccessFlags().j() && !h52.getAccessFlags().D()) {
            R1 r13 = this.f43436c;
            com.android.tools.r8.graph.H2 holder2 = h52.getHolder();
            r13.getClass();
            if (holder2.isInterface()) {
                r13.f43781b.add(a22);
            } else {
                r13.f43782c.add(a22);
            }
            h52.d().a(AbstractC9530t40.f52518b);
        }
        return h52.d();
    }
}
