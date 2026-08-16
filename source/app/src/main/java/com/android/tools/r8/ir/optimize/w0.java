package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.errors.IllegalInvokeSuperToInterfaceOnDalvikDiagnostic;
import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.O2;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC7160et;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C5812Qq0;
import com.android.tools.r8.internal.C6301Zd0;
import com.android.tools.r8.internal.C6648bo1;
import com.android.tools.r8.internal.C6722cD0;
import com.android.tools.r8.internal.C6949de;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7405gK;
import com.android.tools.r8.internal.C7433gY;
import com.android.tools.r8.internal.C7572hK;
import com.android.tools.r8.internal.C7689i2;
import com.android.tools.r8.internal.C8021k2;
import com.android.tools.r8.internal.C8391mE;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8854p10;
import com.android.tools.r8.internal.C9420sR;
import com.android.tools.r8.internal.T10;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.Y5;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.function.Predicate;
import java.util.function.Supplier;

public abstract class w0 {

    public static final boolean f54956a = true;

    public static boolean a(AbstractC10561zE abstractC10561zE, AbstractC10561zE abstractC10561zE2) {
        return abstractC10561zE2 == abstractC10561zE;
    }

    public static boolean b(M2 m22, C6949de c6949de) {
        return !c6949de.E().a(m22);
    }

    public static boolean a(C4798y c4798y, C7215fB c7215fB) {
        c4798y.E().getClass();
        if (!c7215fB.f47902i.a(29)) {
            return false;
        }
        final M2 m22 = c4798y.b().f38068i2;
        Iterator<W5> it = c7215fB.f47897d.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            Y5 I10 = it.next().I();
            while (I10.hasNext()) {
                C8391mE c8391mE = (C8391mE) I10.a(new C6722cD0());
                if (c8391mE != null) {
                    AbstractC8999pu0 u10 = ((C10340xw0) c8391mE.f54321f.get(0)).u();
                    u10.getClass();
                    if (u10 instanceof C6301Zd0) {
                        I10.a(c7215fB, 0);
                    } else if (c4798y.m() && u10.a(new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return com.android.tools.r8.ir.optimize.w0.a(M2.this, (C6949de) obj);
                        }
                    })) {
                        M2 m23 = c8391mE.f50246k;
                        C8854p10 B10 = u10.B();
                        m23.getClass();
                        AbstractC8999pu0 a10 = AbstractC8999pu0.a(m23, B10, (C4798y<?>) c4798y);
                        if (a10.a(new Predicate() {
                            @Override
                            public final boolean test(Object obj) {
                                return com.android.tools.r8.ir.optimize.w0.b(M2.this, (C6949de) obj);
                            }
                        }) && !a10.a(u10, (C4798y<?>) c4798y) && !u10.a(a10, (C4798y<?>) c4798y) && !u10.a(c4798y.L())) {
                            I10.a(c7215fB, 0);
                        }
                    }
                    z10 = true;
                }
            }
        }
        if (f54956a || c7215fB.b((C4798y<?>) c4798y)) {
            return z10;
        }
        throw new AssertionError();
    }

    public static void b(C7215fB c7215fB, final C8570nJ c8570nJ) {
        c8570nJ.getClass();
        if (c8570nJ.a(C2.M) && c7215fB.v().j1()) {
            O2 o22 = c7215fB.v().getReference().f36127i.f36441f;
            if (o22.size() == 3) {
                M2[] m2Arr = o22.f36675b;
                M2 m22 = m2Arr[0];
                M2 m23 = c8570nJ.f50660a.f37870H1;
                if (m22 == m23 && m2Arr[1] == m23 && m2Arr[2].I0()) {
                    Iterator<W5> it = c7215fB.f47897d.iterator();
                    while (it.hasNext()) {
                        Y5 I10 = it.next().I();
                        AbstractC10561zE abstractC10561zE = (AbstractC10561zE) I10.a(new Predicate() {
                            @Override
                            public final boolean test(Object obj) {
                                return com.android.tools.r8.ir.optimize.w0.a(C8570nJ.this, (AbstractC10561zE) obj);
                            }
                        });
                        if (abstractC10561zE != null) {
                            AbstractC10561zE previous = I10.previous();
                            if (!f54956a && abstractC10561zE != previous) {
                                throw new AssertionError();
                            }
                            C10340xw0 a10 = c7215fB.a(AbstractC8999pu0.k(), (C4515j0) null);
                            C7689i2 c7689i2 = new C7689i2(a10);
                            c7689i2.b(abstractC10561zE.getPosition());
                            I10.add(c7689i2);
                            C8021k2 c8021k2 = new C8021k2(a10);
                            c8021k2.b(abstractC10561zE.getPosition());
                            I10.add(c8021k2);
                            return;
                        }
                    }
                }
            }
        }
    }

    public static boolean a(M2 m22, C6949de c6949de) {
        return !c6949de.E().a(m22);
    }

    public static void a(C7215fB c7215fB, C8570nJ c8570nJ) {
        AbstractC10561zE abstractC10561zE;
        c8570nJ.getClass();
        if (c8570nJ.a(C2.N)) {
            final C4724u1 c4724u1 = c8570nJ.f50660a;
            C9420sR c9420sR = new C9420sR(new Supplier() {
                @Override
                public final Object get() {
                    A2 a10;
                    a10 = r0.a(r0.b("Ljava/lang/Long;"), r0.b("signum"), r0.f37823B, new L2[]{C4724u1.this.f37831C});
                    return a10;
                }
            });
            Iterator<W5> it = c7215fB.f47897d.iterator();
            while (it.hasNext()) {
                W5 next = it.next();
                Y5 I10 = next.I();
                final AbstractC10561zE abstractC10561zE2 = (AbstractC10561zE) I10.a(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return com.android.tools.r8.ir.optimize.w0.a((AbstractC10561zE) obj);
                    }
                });
                if (abstractC10561zE2 != null && (abstractC10561zE2 instanceof C7433gY)) {
                    T10 u22 = abstractC10561zE2.C().u2();
                    T10 t10 = T10.f44370f;
                    if (u22 == t10 && abstractC10561zE2.d() != null && (abstractC10561zE = (AbstractC10561zE) I10.a(new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return com.android.tools.r8.ir.optimize.w0.a((AbstractC10561zE) obj);
                        }
                    })) != null && (abstractC10561zE.h1() || (abstractC10561zE instanceof C5812Qq0))) {
                        if (abstractC10561zE.C().u2() == t10) {
                            Iterator<W5> it2 = next.u().iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    if (it2.next().i().u2() == next) {
                                        break;
                                    }
                                } else {
                                    C10340xw0 d10 = abstractC10561zE2.d();
                                    ArrayList arrayList = abstractC10561zE.f54321f;
                                    int size = arrayList.size();
                                    int i10 = 0;
                                    while (i10 < size) {
                                        Object obj = arrayList.get(i10);
                                        i10++;
                                        C10340xw0 c10340xw0 = (C10340xw0) obj;
                                        while (c10340xw0 != d10) {
                                            AbstractC10561zE abstractC10561zE3 = c10340xw0.f53886c;
                                            if (abstractC10561zE3 != null && abstractC10561zE3.Y1()) {
                                                c10340xw0 = abstractC10561zE3.p0().v2();
                                            }
                                        }
                                        Y5 I11 = next.I();
                                        I11.a(new Predicate() {
                                            @Override
                                            public final boolean test(Object obj2) {
                                                return com.android.tools.r8.ir.optimize.w0.a(AbstractC10561zE.this, (AbstractC10561zE) obj2);
                                            }
                                        });
                                        C7405gK c7405gK = new C7405gK((A2) c9420sR.a(c9420sR.f52359b), null, Collections.singletonList((C10340xw0) abstractC10561zE2.f54321f.get(0)));
                                        AbstractC10561zE previous = I11.previous();
                                        boolean z10 = f54956a;
                                        if (!z10 && abstractC10561zE2 != previous) {
                                            throw new AssertionError();
                                        }
                                        W5 b10 = previous.b();
                                        if (b10.z()) {
                                            W5 b11 = I11.b(c7215fB);
                                            if (!z10 && !b11.z()) {
                                                throw new AssertionError();
                                            }
                                            if (!z10 && b10.z()) {
                                                throw new AssertionError();
                                            }
                                            I11 = b10.b(b10.l().size() - 1);
                                        }
                                        c7405gK.b(abstractC10561zE2.getPosition());
                                        I11.add(c7405gK);
                                        return;
                                    }
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
        }
    }

    public static boolean a(C8570nJ c8570nJ, AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.O1() && abstractC10561zE.c0().B2().f38298g == c8570nJ.f50660a.f38067i1 && abstractC10561zE.c0().f54321f.size() == 4 && abstractC10561zE.c0().f54321f.stream().allMatch(new C6648bo1());
    }

    public static boolean a(AbstractC10561zE abstractC10561zE) {
        return (abstractC10561zE.A1() || abstractC10561zE.Y1()) ? false : true;
    }

    public static void a(C7215fB c7215fB, C8570nJ c8570nJ, C4798y c4798y) {
        AbstractC7160et abstractC7160et = c4798y.f38413f;
        c8570nJ.getClass();
        if (c8570nJ.a(C2.L)) {
            H5 j10 = c7215fB.j();
            abstractC7160et.getClass();
            if (abstractC7160et.a(j10.p())) {
                return;
            }
            Iterator it = c7215fB.b(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ((AbstractC10561zE) obj).S1();
                }
            }).iterator();
            while (it.hasNext()) {
                A2 B22 = ((C7572hK) it.next()).B2();
                M2 s02 = B22.s0();
                s02.getClass();
                com.android.tools.r8.graph.E0 g10 = c4798y.g(s02);
                if ((g10 != null ? g10.isInterface() : false) && !abstractC7160et.a(B22.s0())) {
                    c4798y.E().f50691j.warning(new IllegalInvokeSuperToInterfaceOnDalvikDiagnostic(c7215fB.j().w(), B22.v0(), c7215fB.j().f36317b.f36244d));
                }
            }
        }
    }
}
