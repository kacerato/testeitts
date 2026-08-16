package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.F5;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.M5;
import com.android.tools.r8.graph.N4;
import com.android.tools.r8.graph.N5;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AE;
import com.android.tools.r8.internal.AbstractC10241xK;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC5015Cx0;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6931dX;
import com.android.tools.r8.internal.AbstractC8028k40;
import com.android.tools.r8.internal.AbstractC8374m80;
import com.android.tools.r8.internal.C10026w21;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C4;
import com.android.tools.r8.internal.C4986Cj;
import com.android.tools.r8.internal.C5073Dx0;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5485La0;
import com.android.tools.r8.internal.C5721Pc;
import com.android.tools.r8.internal.C5862Rm0;
import com.android.tools.r8.internal.C6382aB;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C6684c01;
import com.android.tools.r8.internal.C6686c10;
import com.android.tools.r8.internal.C6845cz;
import com.android.tools.r8.internal.C6862d40;
import com.android.tools.r8.internal.C7107eb0;
import com.android.tools.r8.internal.C7207f80;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C7374g80;
import com.android.tools.r8.internal.C7541h80;
import com.android.tools.r8.internal.C8048kB;
import com.android.tools.r8.internal.C8191l3;
import com.android.tools.r8.internal.C8193l31;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C8865p5;
import com.android.tools.r8.internal.C9093qU;
import com.android.tools.r8.internal.C9272ra0;
import com.android.tools.r8.internal.InterfaceC6160Wr0;
import com.android.tools.r8.internal.InterfaceC6522b2;
import com.android.tools.r8.internal.JD;
import com.android.tools.r8.internal.KD;
import com.android.tools.r8.internal.N8;
import com.android.tools.r8.internal.O60;
import com.android.tools.r8.internal.QR;
import com.android.tools.r8.internal.TU;
import com.android.tools.r8.internal.VJ;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.Y5;
import com.android.tools.r8.internal.Z5;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.I1;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;

public class W {

    public static final boolean f54813k = true;

    public final C4798y f54814a;

    public final C8048kB f54815b;

    public final QR f54816c;

    public final C9093qU f54817d;

    public final C10705e0 f54818e;

    public final C8865p5 f54822i;

    public final C7207f80 f54819f = new C7207f80(new ConcurrentHashMap());

    public final ConcurrentHashMap f54820g = new ConcurrentHashMap();

    public final Set f54821h = AbstractC5513Ll0.c();

    public final AtomicBoolean f54823j = new AtomicBoolean();

    public W(C4798y c4798y, C8048kB c8048kB, QR qr) {
        this.f54814a = c4798y;
        this.f54815b = c8048kB;
        this.f54816c = qr;
        ((C11245i) c4798y.f()).f();
        this.f54818e = new C10705e0(c4798y);
        this.f54817d = C9093qU.a(c4798y.v());
        C8570nJ E10 = c4798y.E();
        E10.getClass();
        this.f54822i = E10.a(C2.L) ? new C8865p5(c4798y.E()) : null;
    }

    public static boolean a(W5 w52, W5 w53) {
        return w53 == w52;
    }

    public static int b(C7215fB c7215fB) {
        Iterator<W5> it = c7215fB.f47897d.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Y5 it2 = it.next().l().iterator();
            while (it2.hasNext()) {
                AbstractC10561zE next = it2.next();
                if (!f54813k && next.A1()) {
                    throw new AssertionError();
                }
                if (!next.k1() && !(next instanceof C4) && (!next.G1() || next.U().v2().u().size() != 1)) {
                    if (!next.g2()) {
                        i10++;
                    }
                }
            }
        }
        return i10;
    }

    public final void c(H5 h52, H5 h53) {
        C8048kB c8048kB = this.f54815b;
        c8048kB.a(h52);
        N5 n52 = c8048kB.f49517C;
        A2 reference = h52.getReference();
        if (!M5.f36604h && n52.f36607c.containsKey(reference)) {
            throw new AssertionError();
        }
        n52.f36607c.put(reference, h53);
        n52.f36611g.add(reference);
        this.f54821h.add(h52.getReference());
    }

    public AbstractC5015Cx0 a(H5 h52, H5 h53) {
        C4798y c4798y = this.f54814a;
        C11245i c11245i = (C11245i) c4798y.f();
        if (c11245i.f57410y.contains(h52.getReference())) {
            return new C5073Dx0(c4798y, h52, h53);
        }
        return C6686c10.f46935a;
    }

    public final O a(C7215fB c7215fB) {
        C8570nJ E10 = this.f54814a.E();
        C8570nJ.h L10 = E10.L();
        if (L10.f50769c && !L10.f50780n.f50690i1) {
            H5 j10 = c7215fB.j();
            if (!j10.d().f1() && !j10.getHolder().I1()) {
                I1 a10 = this.f54814a.a(j10);
                a10.getClass();
                if (j10.A().H() || ((a10.c(E10) && a10.f56558q) || (a10.c(E10) && a10.f56554m))) {
                    if (this.f54822i == null) {
                        if (!f54813k) {
                            C8570nJ E11 = this.f54814a.E();
                            E11.getClass();
                            if (E11.a(C2.L)) {
                                throw new AssertionError();
                            }
                        }
                    } else {
                        Iterator<W5> it = c7215fB.f47897d.iterator();
                        while (it.hasNext()) {
                            N8 j11 = it.next().j();
                            j11.getClass();
                            int i10 = 0;
                            while (i10 < j11.size()) {
                                M2 m22 = (M2) j11.f42510b.get(i10);
                                j11.f42511c.get(i10);
                                i10++;
                                com.android.tools.r8.graph.E0 g10 = this.f54814a.g(m22);
                                if (g10 == null || g10.f0()) {
                                    if (!this.f54822i.f51435a.contains(m22)) {
                                        return O.f54786c;
                                    }
                                }
                            }
                        }
                    }
                    H5 j12 = c7215fB.j();
                    C8570nJ E12 = this.f54814a.E();
                    E12.getClass();
                    if (E12.a(C2.L) && a(c7215fB, j12)) {
                        return O.f54786c;
                    }
                    O o10 = O.f54787d;
                    X x10 = new X(this.f54814a);
                    for (AbstractC10561zE abstractC10561zE : c7215fB.q()) {
                        O a11 = abstractC10561zE.a(x10, j12);
                        N n10 = a11.f54789a;
                        n10.getClass();
                        N n11 = N.NEVER;
                        if (n10 == n11 && abstractC10561zE.A1()) {
                            a11 = O.f54787d;
                        }
                        N n12 = a11.f54789a;
                        n12.getClass();
                        if (n12 == n11) {
                            return a11;
                        }
                        o10 = O.a(o10, a11, (C4798y<?>) this.f54814a);
                    }
                    return o10;
                }
                return O.f54786c;
            }
            return O.f54786c;
        }
        return O.f54786c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x004d, code lost:
    
        if (r1.g(r2.f36245e) != false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean b(H5 h52, H5 h53) {
        boolean z10 = true;
        boolean z11 = h52.d().J0() && !AbstractC4458g.d(h52.getAccessFlags().f37196b, 2);
        if (!h52.d().A0().b()) {
            if (this.f54814a.E().f50684g1) {
                com.android.tools.r8.synthesis.J g10 = this.f54814a.f38408a.g();
                H2 holder = h52.getHolder();
                g10.getClass();
            }
            z10 = z11;
        }
        if (z10) {
            h52.c(this.f54814a);
            this.f54815b.c(h52);
        }
        return z10;
    }

    public final void b() {
        if (this.f54823j.getAndSet(true)) {
            return;
        }
        C8048kB c8048kB = this.f54815b;
        InterfaceC6522b2 interfaceC6522b2 = new InterfaceC6522b2() {
            @Override
            public final void a() {
                com.android.tools.r8.ir.optimize.W.this.a();
            }
        };
        if (c8048kB.f49522a.m()) {
            List list = c8048kB.f49516B;
            if (list != null) {
                list.add(interfaceC6522b2);
                return;
            }
            throw new C5417Jv0("Attempt to call addWaveDoneAction() outside of wave.");
        }
        throw new C5417Jv0("addWaveDoneAction() should never be used in D8.");
    }

    public static void b(final C4798y c4798y) {
        Iterator it = ((C11245i) c4798y.f()).e().iterator();
        while (it.hasNext()) {
            ((H2) it.next()).h(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    com.android.tools.r8.ir.optimize.W.a(C4798y.this, (H5) obj);
                }
            }, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return com.android.tools.r8.ir.optimize.W.a((C4516j1) obj);
                }
            });
        }
    }

    public static boolean a(C7215fB c7215fB, H5 h52) {
        M2 u12 = h52.d().u1();
        Iterator<W5> it = c7215fB.f47897d.iterator();
        while (it.hasNext()) {
            AE H10 = it.next().H();
            while (H10.hasNext()) {
                AbstractC10561zE abstractC10561zE = (AbstractC10561zE) H10.a(new C8193l31());
                if (abstractC10561zE != null && u12.F0() && !((C10340xw0) abstractC10561zE.f54321f.get(0)).a((Set) null)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void a(H5 h52, C7215fB c7215fB, AbstractC8028k40 abstractC8028k40, AbstractC6931dX abstractC6931dX, C8659ns0 c8659ns0, KD kd2) {
        H a10 = a(c7215fB, h52, abstractC6931dX, kd2);
        JD jd2 = new JD(this.f54814a, h52, c7215fB, this.f54816c, abstractC6931dX);
        if (!f54813k && !JD.f41350g && !jd2.f41356f.isEmpty()) {
            throw new AssertionError();
        }
        a(a10, h52, c7215fB, abstractC8028k40, jd2, abstractC6931dX, c8659ns0);
    }

    public final KD a(AbstractC6931dX abstractC6931dX) {
        final C4986Cj c4986Cj = new C4986Cj(this.f54814a, abstractC6931dX.c());
        return (KD) this.f54814a.b(c4986Cj, new Function() {
            @Override
            public final Object apply(Object obj) {
                return com.android.tools.r8.ir.optimize.W.this.a(c4986Cj, (C6845cz) obj);
            }
        });
    }

    public final KD a(C4986Cj c4986Cj, C6845cz c6845cz) {
        return new C9272ra0(this.f54814a, c4986Cj);
    }

    public H a(C7215fB c7215fB, H5 h52, AbstractC6931dX abstractC6931dX, KD kd2) {
        return new H(this.f54814a, h52, abstractC6931dX, kd2, c7215fB);
    }

    /* JADX WARN: Code restructure failed: missing block: B:122:0x0381, code lost:
    
        if (r3.getHolder().a1() == r0.f41997i) goto L158;
     */
    /* JADX WARN: Removed duplicated region for block: B:156:0x00dc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0112 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v27, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v30, types: [java.util.Map, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(Y y10, H5 h52, C7215fB c7215fB, AbstractC8028k40 abstractC8028k40, JD jd2, final AbstractC6931dX abstractC6931dX, C8659ns0 c8659ns0) {
        C10696a c10696a;
        C8570nJ.h hVar;
        Z5 z52;
        ArrayDeque arrayDeque;
        Set<W5> set;
        W5 w52;
        final H5 a10;
        AbstractC8374m80 c10;
        Y5 y52;
        Y y11;
        AbstractC5015Cx0 a11;
        C4516j1 c4516j1;
        final H5 h53 = h52;
        C7215fB c7215fB2 = c7215fB;
        C10696a c10696a2 = new C10696a();
        Set<W5> c11 = AbstractC5513Ll0.c();
        Z5 u10 = c7215fB.u();
        C5721Pc c5721Pc = new C5721Pc(this.f54814a, c7215fB2);
        ArrayDeque arrayDeque2 = new ArrayDeque();
        C8570nJ.h L10 = this.f54814a.E().L();
        while (u10.f46159b.hasNext()) {
            W5 w53 = (W5) u10.f46159b.next();
            u10.f46160c = w53;
            if (!arrayDeque2.isEmpty() && arrayDeque2.peekFirst() == w53) {
                arrayDeque2.pop();
            }
            if (!c11.contains(w53)) {
                Y5 I10 = w53.I();
                while (I10.hasNext()) {
                    AbstractC10561zE next = I10.next();
                    if (next.P1()) {
                        VJ e02 = next.e0();
                        C10696a c10696a3 = c10696a2;
                        Z4.c<?> o10 = ((C11245i) this.f54814a.f()).b(e02.B2(), e02.A2()).o();
                        if (o10 == null) {
                            h53 = h52;
                            c11 = c11;
                            arrayDeque2 = arrayDeque2;
                            u10 = u10;
                            L10 = L10;
                        } else if (!o10.a(h53, this.f54814a).b()) {
                            com.android.tools.r8.graph.H0 a12 = com.android.tools.r8.graph.H0.a(o10.f37021c, o10.f37022d);
                            if (e02.Q1()) {
                                if (!I10.a(this.f54814a, c7215fB.j())) {
                                }
                            } else if (e02.R1()) {
                                w52 = w53;
                                if (I10.a(this.f54814a, c7215fB2, a12.p(), C6628bi.b())) {
                                    c10696a2 = c10696a3;
                                    w53 = w52;
                                }
                                a10 = y10.a(h53, e02);
                                if (a10 != null) {
                                    C4798y c4798y = this.f54814a;
                                    if (!((C11245i) c4798y.f()).f57410y.isEmpty() && (c10 = e02.c(c4798y, h53)) != null) {
                                        Iterator it = c10.f45165b.values().iterator();
                                        while (it.hasNext()) {
                                            a((H5) it.next(), h53).u();
                                        }
                                    }
                                    c10696a2 = c10696a3;
                                    w53 = w52;
                                } else {
                                    if (y10.a() || !a10.A().g()) {
                                        y52 = I10;
                                        y11 = y10;
                                    } else {
                                        y52 = I10;
                                        y11 = new K(this.f54814a, new C5862Rm0(e02, new T(a10)));
                                    }
                                    C4516j1 d10 = a10.d();
                                    if (y11.a()) {
                                        a11 = C6686c10.f46935a;
                                    } else {
                                        a11 = a(a10, h53);
                                    }
                                    AbstractC5015Cx0 abstractC5015Cx0 = a11;
                                    final W5 w54 = w52;
                                    C8570nJ.h hVar2 = L10;
                                    ArrayDeque arrayDeque3 = arrayDeque2;
                                    S a13 = y11.a(c7215fB, e02, o10, a10, h52, c5721Pc, jd2, abstractC5015Cx0);
                                    if (a13 == null) {
                                        if (!f54813k) {
                                            abstractC5015Cx0.w();
                                        }
                                    } else if (a13 instanceof V) {
                                        this.f54817d.a(this.f54814a.v(), h53);
                                    } else {
                                        Q a14 = a13.a();
                                        if (a14.f54800c == U.f54810d) {
                                            if (!f54813k && !abstractC6931dX.f()) {
                                                throw new AssertionError();
                                            }
                                        } else if (!y11.a(a14, abstractC5015Cx0)) {
                                            if (!f54813k) {
                                                abstractC5015Cx0.w();
                                            }
                                        } else {
                                            C7215fB a15 = a14.a(this.f54814a, e02, h53, jd2);
                                            C5721Pc c5721Pc2 = c5721Pc;
                                            if (y11.a(a14, c7215fB, a15, e02, w54, abstractC5015Cx0)) {
                                                if (!f54813k) {
                                                    abstractC5015Cx0.w();
                                                }
                                                c7215fB2 = c7215fB;
                                                c5721Pc = c5721Pc2;
                                                c10696a2 = c10696a3;
                                                I10 = y52;
                                                w53 = w54;
                                                L10 = hVar2;
                                                arrayDeque2 = arrayDeque3;
                                            } else {
                                                boolean z10 = f54813k;
                                                if (!z10 && !a10.d().o1()) {
                                                    throw new AssertionError();
                                                }
                                                boolean c12 = a15.f47902i.c();
                                                y52.previous();
                                                y10.a(a15);
                                                y52.a(this.f54814a, c7215fB, a15, u10, c11, a14.f54803f);
                                                C7207f80 c7207f80 = a14.f54802e;
                                                if (c7207f80 != null) {
                                                    if (!z10 && c7207f80.f47879b.isEmpty()) {
                                                        throw new AssertionError();
                                                    }
                                                    if (!z10 && this.f54815b.f49516B == null) {
                                                        throw new AssertionError();
                                                    }
                                                    this.f54819f.f47879b.putAll(a14.f54802e.f47879b);
                                                    b();
                                                }
                                                if (abstractC6931dX.c().a(a10, h53)) {
                                                    abstractC8028k40.b(d10);
                                                    C4798y c4798y2 = this.f54814a;
                                                    c4516j1 = d10;
                                                    InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
                                                        @Override
                                                        public final void accept(Object obj) {
                                                            com.android.tools.r8.ir.optimize.W.a(H5.this, h53, abstractC6931dX, (C8191l3) obj);
                                                        }
                                                    };
                                                    C8191l3 c8191l3 = c4798y2.f38386A;
                                                    if (c8191l3 != null) {
                                                        interfaceC6160Wr0.accept(c8191l3);
                                                    }
                                                    if (!(abstractC6931dX instanceof C6862d40)) {
                                                        if (!z10 && this.f54815b.f49516B == null) {
                                                            throw new AssertionError();
                                                        }
                                                        b();
                                                        C7541h80 c7541h80 = (C7541h80) this.f54820g.computeIfAbsent(a10.getHolder(), TU.a(new Supplier() {
                                                            @Override
                                                            public final Object get() {
                                                                return C7541h80.l();
                                                            }
                                                        }));
                                                        c7541h80.getClass();
                                                        c7541h80.f43368b.put(new C7333fv(C7374g80.f48192a, a10), h53);
                                                    }
                                                } else {
                                                    c4516j1 = d10;
                                                }
                                                abstractC6931dX.c().c(a10);
                                                c5721Pc2.f43280c = null;
                                                int i10 = c5721Pc2.f43281d;
                                                if (i10 >= 0) {
                                                    c5721Pc2.f43279b.a(i10);
                                                    c5721Pc2.f43281d = -1;
                                                }
                                                z52 = u10;
                                                set = c11;
                                                c10696a = c10696a3;
                                                a(c7215fB, z52, w54, c10696a3, set, c8659ns0);
                                                if (h52.getAccessFlags().I() && !a10.getAccessFlags().I()) {
                                                    h52.getAccessFlags().f37197c &= -65;
                                                }
                                                if (h52.getAccessFlags().o() && !a10.getAccessFlags().o()) {
                                                    h52.getAccessFlags().f37197c &= -4097;
                                                }
                                                h52.d().a(this.f54814a, c4516j1);
                                                if (c12) {
                                                    boolean z11 = true;
                                                    int size = arrayDeque3.size() + 1;
                                                    C4798y<?> c4798y3 = this.f54814a;
                                                    hVar = hVar2;
                                                    C8570nJ.a aVar = hVar.f50779m;
                                                    if (aVar != null) {
                                                        z11 = aVar.a(c4798y3, a10, size);
                                                    } else {
                                                        if (hVar.f50780n.a0().a()) {
                                                            C5485La0 c5485La0 = c4798y3.f38388C.f42929h;
                                                            c5485La0.getClass();
                                                            if (!c5485La0.b(a10.getReference())) {
                                                                if (size <= 1) {
                                                                    C5485La0 c5485La02 = c4798y3.f38388C.f42929h;
                                                                    if (a10.p() != c5485La02.f41997i) {
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        z11 = false;
                                                    }
                                                    if (z11) {
                                                        arrayDeque = arrayDeque3;
                                                        arrayDeque.push((W5) AbstractC10241xK.a((ListIterator) z52));
                                                        AbstractC10241xK.a(z52, new Predicate() {
                                                            @Override
                                                            public final boolean test(Object obj) {
                                                                return com.android.tools.r8.ir.optimize.W.a(W5.this, (W5) obj);
                                                            }
                                                        });
                                                        z52.f46160c = (W5) z52.f46159b.next();
                                                        h53 = h52;
                                                        c7215fB2 = c7215fB;
                                                        c5721Pc = c5721Pc2;
                                                        I10 = y52;
                                                        w53 = w54;
                                                    } else {
                                                        h53 = h52;
                                                        c7215fB2 = c7215fB;
                                                        c5721Pc = c5721Pc2;
                                                        u10 = z52;
                                                        c11 = set;
                                                        I10 = y52;
                                                        w53 = w54;
                                                        arrayDeque2 = arrayDeque3;
                                                        L10 = hVar;
                                                        c10696a2 = c10696a;
                                                    }
                                                } else {
                                                    h53 = h52;
                                                    c7215fB2 = c7215fB;
                                                    c5721Pc = c5721Pc2;
                                                    u10 = z52;
                                                    c11 = set;
                                                    I10 = y52;
                                                    w53 = w54;
                                                    L10 = hVar2;
                                                    arrayDeque2 = arrayDeque3;
                                                    c10696a2 = c10696a;
                                                }
                                            }
                                        }
                                    }
                                    c7215fB2 = c7215fB;
                                    c10696a2 = c10696a3;
                                    I10 = y52;
                                    w53 = w54;
                                    L10 = hVar2;
                                    arrayDeque2 = arrayDeque3;
                                }
                            }
                            w52 = w53;
                            a10 = y10.a(h53, e02);
                            if (a10 != null) {
                            }
                        }
                        c10696a2 = c10696a3;
                    } else {
                        c10696a = c10696a2;
                        hVar = L10;
                        z52 = u10;
                        arrayDeque = arrayDeque2;
                        set = c11;
                        h53 = h52;
                    }
                    c11 = set;
                    arrayDeque2 = arrayDeque;
                    u10 = z52;
                    L10 = hVar;
                    c10696a2 = c10696a;
                }
                h53 = h52;
            }
        }
        C5721Pc c5721Pc3 = c5721Pc;
        C10696a c10696a4 = c10696a2;
        C7215fB c7215fB3 = c7215fB2;
        ArrayDeque arrayDeque4 = arrayDeque2;
        Collection<W5> collection = c11;
        boolean z12 = f54813k;
        if (!z12 && !arrayDeque4.isEmpty()) {
            throw new AssertionError();
        }
        c7215fB3.b(collection);
        int i11 = c5721Pc3.f43281d;
        if (i11 >= 0) {
            c5721Pc3.f43279b.a(i11);
            c5721Pc3.f43281d = -1;
        }
        c7215fB3.a((C6382aB) null, c10696a4);
        c10696a4.a(this.f54814a, c7215fB3, C6628bi.b());
        c7215fB.x();
        if (!z12 && !c7215fB3.b(this.f54814a)) {
            throw new AssertionError();
        }
    }

    public static void a(H5 h52, H5 h53, AbstractC6931dX abstractC6931dX, C8191l3 c8191l3) {
        c8191l3.getClass();
        if (!C8191l3.f49869f && !abstractC6931dX.f()) {
            throw new AssertionError();
        }
        if (h52.d().j1()) {
            if (h53.d().j1() && h53.getHolder() == h52.getHolder()) {
                return;
            }
            c8191l3.f49871b.add(h52.getHolder());
        }
    }

    public final void a(C7215fB c7215fB, Z5 z52, W5 w52, C10696a c10696a, final Set set, C8659ns0 c8659ns0) {
        W5 w53 = (W5) AbstractC10241xK.a((ListIterator) z52);
        final Set c10 = AbstractC5513Ll0.c();
        a(z52, w52, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.ir.optimize.W.a(Set.this, c10, (W5) obj);
            }
        });
        a(c7215fB, z52, c10696a, c10);
        a(z52, w52, C6628bi.b());
        a(c7215fB, z52, c10, c8659ns0);
        a(z52, w53, C6628bi.b());
    }

    public static void a(Set set, Set set2, W5 w52) {
        if (set.contains(w52)) {
            return;
        }
        set2.add(w52);
    }

    public final void a(C7215fB c7215fB, Z5 z52, Set set, C8659ns0 c8659ns0) {
        new C10726q(this.f54814a, 0).a(c7215fB, z52, new C6684c01(set), c8659ns0);
        if (!f54813k && z52.f46159b.hasNext()) {
            throw new AssertionError();
        }
    }

    public final void a(C7215fB c7215fB, Z5 z52, C10696a c10696a, Set set) {
        C7107eb0 c7107eb0 = new C7107eb0(this.f54814a);
        Objects.requireNonNull(set);
        c7107eb0.a(c7215fB, z52, c10696a, new C6684c01(set));
        if (!f54813k && z52.f46159b.hasNext()) {
            throw new AssertionError();
        }
    }

    public static boolean a(C4516j1 c4516j1) {
        c4516j1.L0();
        return c4516j1.f37320m.w();
    }

    public static void a(Z5 z52, W5 w52, Consumer consumer) {
        W5 previous;
        while (z52.hasPrevious() && (previous = z52.previous()) != w52) {
            consumer.accept(previous);
        }
        if (!f54813k && AbstractC10241xK.a((ListIterator) z52) != w52) {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.Map, java.lang.Object] */
    public final void a() {
        this.f54819f.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((F5) obj).getAccessFlags().a();
            }
        });
        this.f54820g.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                com.android.tools.r8.ir.optimize.W.this.a((H2) obj, (C7541h80) obj2);
            }
        });
        this.f54819f.f47879b.clear();
        this.f54820g.clear();
        this.f54823j.set(false);
    }

    public final void a(H2 h22, C7541h80 c7541h80) {
        c7541h80.a(new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return com.android.tools.r8.ir.optimize.W.this.b((H5) obj, (H5) obj2);
            }
        });
        if (c7541h80.f43368b.isEmpty()) {
            return;
        }
        Set set = (Set) c7541h80.j().map(new C10026w21()).collect(Collectors.toSet());
        N4 b02 = h22.b0();
        b02.getClass();
        if (!set.isEmpty()) {
            b02.f36638b.a(set);
            b02.f36639c = C4516j1.f37311v;
        }
        c7541h80.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                com.android.tools.r8.ir.optimize.W.this.c((H5) obj, (H5) obj2);
            }
        });
    }

    public final void a(O60 o60, C8659ns0 c8659ns0, ExecutorService executorService) {
        O60 a10 = o60.a(this.f54814a);
        C9093qU c9093qU = this.f54817d;
        C4798y c4798y = this.f54814a;
        c9093qU.getClass();
        a10.f42781a.a(c9093qU.c(c4798y.v()).a(this.f54814a, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean w10;
                w10 = ((H5) obj).A().w();
                return w10;
            }
        }));
        this.f54817d.f51792d.clear();
        this.f54818e.a(o60, c8659ns0, executorService);
    }

    public static void a(C4798y c4798y, H5 h52) {
        if (!f54813k && h52.d().b1() && h52.b(c4798y)) {
            throw new AssertionError();
        }
    }

    public static void a(C4798y c4798y) {
        Iterator it = c4798y.f().e().iterator();
        while (it.hasNext()) {
            for (C4516j1 c4516j1 : ((H2) it.next()).z1()) {
                if (c4516j1.b1()) {
                    c4516j1.L0();
                    c4516j1.f37320m.A();
                }
            }
        }
    }
}
