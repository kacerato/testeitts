package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.kotlin.C10763d;
import com.android.tools.r8.shaking.C11245i;
import com.google.firebase.FirebaseCommonRegistrar;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Predicate;

public final class VW {

    public static final boolean f45069e = true;

    public final C4798y f45070a;

    public final C8109kc f45071b;

    public final C4724u1 f45072c;

    public final C8570nJ f45073d;

    public VW(C4798y c4798y, C8048kB c8048kB) {
        this.f45070a = c4798y;
        this.f45071b = !c4798y.E().f50690i1 ? new C8109kc(c4798y, c8048kB) : null;
        this.f45072c = c4798y.b();
        this.f45073d = c4798y.E();
    }

    public static boolean a(C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        return (c10340xw0.j() && c10340xw02.B()) || c10340xw0.a(D4.f39431a, EnumC6871d70.f47287c) == c10340xw02;
    }

    public static boolean b(com.android.tools.r8.graph.H2 h22) {
        return true;
    }

    public final boolean a(final C7215fB c7215fB, final C10340xw0 c10340xw0) {
        UW uw;
        BiFunction biFunction = new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return VW.this.a(c10340xw0, c7215fB, (AbstractC10561zE) obj, (AE) obj2);
            }
        };
        int y10 = c7215fB.y();
        try {
            ArrayDeque arrayDeque = new ArrayDeque();
            W5 k10 = c7215fB.k();
            arrayDeque.add(k10);
            k10.c(y10);
            while (!arrayDeque.isEmpty()) {
                W5 w52 = (W5) arrayDeque.poll();
                if (!f45069e && !w52.a(y10)) {
                    throw new AssertionError();
                }
                UW uw2 = UW.f44772e;
                AE H10 = w52.H();
                while (true) {
                    uw = UW.f44772e;
                    if (uw2 != uw || !H10.hasNext()) {
                        break;
                    }
                    uw2 = (UW) biFunction.apply(H10.next(), H10);
                }
                if (uw2 == UW.f44771d) {
                    c7215fB.a(y10);
                    return false;
                }
                if (uw2 != UW.f44769b) {
                    if (uw2 == UW.f44770c) {
                        boolean z10 = f45069e;
                        if (!z10 && w52.p().isEmpty()) {
                            throw new AssertionError();
                        }
                        AbstractC10561zE b10 = w52.l().b();
                        if (!z10 && !b10.H1()) {
                            throw new AssertionError();
                        }
                        W5 b11 = b10.V().b(0);
                        if (!b11.a(y10)) {
                            arrayDeque.add(b11);
                            b11.c(y10);
                        }
                    } else {
                        boolean z11 = f45069e;
                        if (!z11 && uw2 != uw) {
                            throw new AssertionError();
                        }
                        if (w52.p().isEmpty()) {
                            AbstractC10561zE b12 = w52.l().b();
                            if (!z11 && !b12.g2() && !b12.m2()) {
                                throw new AssertionError();
                            }
                            return false;
                        }
                        for (W5 w53 : w52.v()) {
                            if (!w53.a(y10)) {
                                arrayDeque.add(w53);
                                w53.c(y10);
                            }
                        }
                    }
                }
            }
            c7215fB.a(y10);
            return true;
        } finally {
            c7215fB.a(y10);
        }
    }

    public final UW a(C10340xw0 c10340xw0, C7215fB c7215fB, AbstractC10561zE abstractC10561zE, AE ae2) {
        AbstractC10561zE h10;
        W5 b10 = abstractC10561zE.b();
        if (!b10.z() && a(abstractC10561zE, c10340xw0)) {
            return UW.f44770c;
        }
        if (abstractC10561zE.R1()) {
            C7405gK i02 = abstractC10561zE.i0();
            C4798y c4798y = this.f45070a;
            if (!c4798y.E().f50729v1.f51751a) {
                C10763d c10763d = c4798y.b().f38007a5.f55310c;
                AbstractC5308Hz v10 = c4798y.v();
                com.android.tools.r8.graph.A2 B22 = i02.B2();
                v10.getClass();
                com.android.tools.r8.graph.A2 a10 = v10.a(AbstractC5308Hz.g(), B22);
                if ((a10.c(c10763d.f55272c) || a10.c(c10763d.f55273d)) && i02.b(0) == c10340xw0 && a10.s0().z0().startsWith(FirebaseCommonRegistrar.f67622j)) {
                    return UW.f44769b;
                }
            }
            C4798y c4798y2 = this.f45070a;
            if (!c4798y2.E().f50729v1.f51751a) {
                C10763d c10763d2 = c4798y2.b().f38007a5.f55310c;
                AbstractC5308Hz v11 = c4798y2.v();
                com.android.tools.r8.graph.A2 B23 = i02.B2();
                v11.getClass();
                com.android.tools.r8.graph.A2 a11 = v11.a(AbstractC5308Hz.g(), B23);
                if ((a11.c(c10763d2.f55270a) || a11.c(c10763d2.f55271b)) && a11.s0().z0().startsWith(FirebaseCommonRegistrar.f67622j)) {
                    Iterator<W5> it = b10.u().iterator();
                    while (it.hasNext()) {
                        if (a(it.next().i(), c10340xw0)) {
                            return UW.f44769b;
                        }
                    }
                    return UW.f44772e;
                }
            }
        }
        C4724u1 b11 = this.f45070a.b();
        if (abstractC10561zE.c2() && abstractC10561zE.w0().f52627k == b11.f37851E3 && (h10 = ae2.h()) != null && h10.O1() && h10.c0().B2() == b11.f37978W4.f37263a) {
            ae2.next();
            return UW.f44772e;
        }
        if (abstractC10561zE.a(this.f45070a, c7215fB.j(), c10340xw0)) {
            if (!b10.z()) {
                return UW.f44769b;
            }
        } else {
            C4798y c4798y3 = this.f45070a;
            com.android.tools.r8.graph.H5 j10 = c7215fB.j();
            M1 a12 = M1.a(c4798y3, j10);
            C10394yE c10394yE = C10394yE.f53978a;
            if (abstractC10561zE.b(c4798y3, j10, a12, c10394yE)) {
                if (abstractC10561zE.x1()) {
                    C4798y c4798y4 = this.f45070a;
                    com.android.tools.r8.graph.H5 j11 = c7215fB.j();
                    if (!abstractC10561zE.a(c4798y4, j11, M1.a(c4798y4, j11), c10394yE)) {
                        return UW.f44772e;
                    }
                }
                return UW.f44771d;
            }
        }
        return UW.f44772e;
    }

    public static boolean a(AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        return abstractC10561zE.H1() && abstractC10561zE.V().x2() && ((C10340xw0) abstractC10561zE.f54321f.get(0)).equals(c10340xw0) && (abstractC10561zE.V().f39789l == NB.f42527b || abstractC10561zE.V().f39789l == NB.f42532g);
    }

    public final void a(AbstractC8028k40 abstractC8028k40, C4516j1 c4516j1, C7215fB c7215fB) {
        boolean z10 = f45069e;
        if (!z10 && c4516j1.f37314g.J()) {
            throw new AssertionError();
        }
        if (this.f45073d.f50618M && !((C11245i) this.f45070a.f()).f57408w.containsKey(c4516j1.getReference())) {
            com.android.tools.r8.graph.H5 j10 = c7215fB.j();
            if (c4516j1.f1()) {
                int a10 = AbstractC6011Uc.a(this.f45070a, c7215fB);
                if (a10 == 3) {
                    abstractC8028k40.a(c4516j1);
                    abstractC8028k40.d(c4516j1);
                    return;
                } else if (a10 != 1) {
                    abstractC8028k40.d(c4516j1);
                    return;
                } else {
                    if (z10 || this.f45073d.f50690i1 || this.f45070a.f38408a.g().c()) {
                        return;
                    }
                    this.f45070a.f38408a.g().a(j10.getHolder(), new V60() {
                        @Override
                        public final boolean apply(Object obj) {
                            return VW.this.a((com.android.tools.r8.graph.H2) obj);
                        }
                    }, new V60() {
                        @Override
                        public final boolean apply(Object obj) {
                            return VW.b((com.android.tools.r8.graph.H2) obj);
                        }
                    });
                    return;
                }
            }
            if (c4516j1.f37314g.L()) {
                return;
            }
            for (AbstractC10561zE abstractC10561zE : c7215fB.q()) {
                if (abstractC10561zE.a(this.f45070a.b()) && abstractC10561zE.c0().C2().i().d(new C7680hz0())) {
                    C4798y c4798y = this.f45070a;
                    if (abstractC10561zE.b(c4798y, j10, M1.a(c4798y, j10), C10394yE.f53980c)) {
                        return;
                    }
                } else {
                    C4798y c4798y2 = this.f45070a;
                    if (abstractC10561zE.b(c4798y2, j10, M1.a(c4798y2, j10), C10394yE.f53978a)) {
                        return;
                    }
                }
            }
            abstractC8028k40.a(c4516j1);
        }
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        C11245i c11245i = (C11245i) this.f45070a.f();
        com.android.tools.r8.graph.M2 type = h22.getType();
        if (!C11245i.f57385J) {
            c11245i.getClass();
            if (!type.I0()) {
                throw new AssertionError();
            }
        }
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c11245i.g(type));
        if (a10 == null) {
            return false;
        }
        C9406sK E12 = a10.E1();
        CK a11 = JK.a(E12.f52337b.iterator(), E12.f52338c);
        while (a11.f43396b.hasNext()) {
            com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) a11.a(a11.f43396b.next());
            if (h52.d().j1() && c11245i.a(h52)) {
                return true;
            }
        }
        return false;
    }

    public final boolean a(C7215fB c7215fB, C10340xw0 c10340xw0, C6993dt c6993dt, Set set) {
        if (!f45069e && !c10340xw0.u().y()) {
            throw new AssertionError();
        }
        if (c10340xw0.f53893j) {
            return true;
        }
        Set c10 = AbstractC5513Ll0.c();
        C9132qj c9132qj = C9132qj.f51861a;
        Set<AbstractC10561zE> c11 = AbstractC5513Ll0.c();
        C10340xw0.a(c9132qj, c10340xw0, c11);
        for (final AbstractC10561zE abstractC10561zE : c11) {
            if (abstractC10561zE.r1()) {
                if (!f45069e && abstractC10561zE.b().z() && abstractC10561zE.b().l().stream().filter(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return VW.a(AbstractC10561zE.this, (AbstractC10561zE) obj);
                    }
                }).findFirst().get() != abstractC10561zE) {
                    throw new AssertionError();
                }
                c10.add(abstractC10561zE.b());
            } else if (abstractC10561zE.a(this.f45070a, c7215fB.j(), c10340xw0)) {
                if (abstractC10561zE.b().z()) {
                    c10.addAll(abstractC10561zE.b().p());
                } else {
                    c10.add(abstractC10561zE.b());
                }
            } else if (abstractC10561zE.H1() && abstractC10561zE.V().x2() && (abstractC10561zE.V().f39789l == NB.f42527b || abstractC10561zE.V().f39789l == NB.f42532g)) {
                c10.add(abstractC10561zE.V().z2());
            }
        }
        if (c10.isEmpty()) {
            return false;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            W5 w52 = (W5) it.next();
            Iterator it2 = c10.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (c6993dt.a(w52, (W5) it2.next())) {
                        break;
                    }
                } else {
                    Set c12 = AbstractC5513Ll0.c();
                    ArrayDeque arrayDeque = new ArrayDeque(w52.u());
                    while (!arrayDeque.isEmpty()) {
                        W5 w53 = (W5) arrayDeque.poll();
                        if (w53 != c7215fB.k()) {
                            if (!c12.add(w53)) {
                                if (arrayDeque.isEmpty()) {
                                }
                            } else {
                                Iterator it3 = c10.iterator();
                                while (true) {
                                    if (it3.hasNext()) {
                                        if (c6993dt.a(w53, (W5) it3.next())) {
                                            break;
                                        }
                                    } else {
                                        arrayDeque.addAll(w53.u());
                                        break;
                                    }
                                }
                            }
                        }
                        return false;
                    }
                    if (!f45069e && !arrayDeque.isEmpty()) {
                        throw new AssertionError();
                    }
                }
            }
        }
        return true;
    }

    public static boolean a(AbstractC10561zE abstractC10561zE, AbstractC10561zE abstractC10561zE2) {
        return abstractC10561zE2 == abstractC10561zE || abstractC10561zE2.o();
    }

    public static boolean a(C8024k3 c8024k3) {
        AbstractC8999pu0 a10 = c8024k3.a();
        a10.getClass();
        return (a10 instanceof C9736uI) && c8024k3.d().c(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((AbstractC10561zE) obj).j1();
            }
        });
    }
}
