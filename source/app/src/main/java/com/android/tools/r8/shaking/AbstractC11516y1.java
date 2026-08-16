package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.AbstractC4365b1;
import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.R00;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public abstract class AbstractC11516y1 {

    public static final boolean f57991a = true;

    public final F1 a(AbstractC4479h1 abstractC4479h1, com.android.tools.r8.graph.H2 h22) {
        abstractC4479h1.getClass();
        if (abstractC4479h1 instanceof C4460g1) {
            return a(abstractC4479h1.m0(), h22);
        }
        if (f57991a || abstractC4479h1.v0()) {
            return a(h22, abstractC4479h1.o0());
        }
        throw new AssertionError();
    }

    public abstract I1 a(com.android.tools.r8.graph.H2 h22, C4516j1 c4516j1);

    public abstract C11297l1 a(com.android.tools.r8.graph.H2 h22);

    public abstract C11382q1 a(C4460g1 c4460g1, com.android.tools.r8.graph.H2 h22);

    public abstract C11500x1 a(R00 r00, C8570nJ c8570nJ, C8659ns0 c8659ns0);

    public abstract C11500x1 a(Consumer consumer);

    public abstract void a(com.android.tools.r8.graph.H5 h52);

    public abstract void a(C4798y c4798y, BiConsumer biConsumer, BiConsumer biConsumer2, BiConsumer biConsumer3);

    public abstract void a(C8570nJ c8570nJ, Set set);

    public abstract void a(Consumer consumer, C8570nJ c8570nJ);

    public abstract void b(Consumer consumer, C8570nJ c8570nJ);

    public abstract void c(Consumer consumer, C8570nJ c8570nJ);

    public final C11297l1 a(com.android.tools.r8.graph.E0 e02) {
        if (e02 != null && e02.e0()) {
            return a(e02.d0());
        }
        return C11297l1.f57491t;
    }

    public final C11382q1 a(C4460g1 c4460g1, InterfaceC4403d1 interfaceC4403d1) {
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(interfaceC4403d1.a(c4460g1.B0()));
        if (a10 == null) {
            return C11382q1.f57709o;
        }
        if (!f57991a) {
            if (a10.f36251k.f37700b.a(c4460g1.getReference()) != c4460g1) {
                throw new AssertionError();
            }
        }
        return a(c4460g1, a10);
    }

    public final boolean a(com.android.tools.r8.graph.J2 j22, Q0 q02, InterfaceC4403d1 interfaceC4403d1) {
        AbstractC11432t1 a10;
        j22.getClass();
        if (j22 instanceof com.android.tools.r8.graph.M2) {
            a10 = a(interfaceC4403d1.a(j22.o0()));
        } else if (j22.r0()) {
            com.android.tools.r8.graph.A2 n02 = j22.n0();
            com.android.tools.r8.graph.H2 a11 = com.android.tools.r8.graph.H2.a(interfaceC4403d1.a(n02.f38297f));
            if (a11 == null) {
                a10 = I1.f56549D;
            } else {
                C4516j1 b10 = a11.b(n02);
                if (b10 == null) {
                    a10 = I1.f56549D;
                } else {
                    a10 = a(a11, b10);
                }
            }
        } else if (j22.p0()) {
            C4554l1 l02 = j22.l0();
            com.android.tools.r8.graph.H2 a12 = com.android.tools.r8.graph.H2.a(interfaceC4403d1.g(l02.f38297f));
            if (a12 == null) {
                a10 = C11382q1.f57709o;
            } else {
                C4460g1 a13 = a12.f36251k.f37700b.a(l02);
                if (a13 == null) {
                    a10 = C11382q1.f57709o;
                } else {
                    a10 = a(a13, a12);
                }
            }
        } else {
            throw new C5417Jv0();
        }
        return a10.d(q02);
    }

    public final boolean a(AbstractC4365b1 abstractC4365b1, Q0 q02, InterfaceC4403d1 interfaceC4403d1) {
        AbstractC11432t1 a10;
        if (abstractC4365b1.s0()) {
            a10 = a(abstractC4365b1.l0());
        } else if (abstractC4365b1.v0()) {
            C4516j1 o02 = abstractC4365b1.o0();
            com.android.tools.r8.graph.H2 a11 = com.android.tools.r8.graph.H2.a(interfaceC4403d1.a(o02.B0()));
            if (a11 == null) {
                a10 = I1.f56549D;
            } else {
                if (!f57991a && o02 != a11.b(o02.getReference())) {
                    throw new AssertionError();
                }
                a10 = a(a11, o02);
            }
        } else if (abstractC4365b1 instanceof C4460g1) {
            a10 = a(abstractC4365b1.m0(), interfaceC4403d1);
        } else {
            throw new C5417Jv0();
        }
        return a10.d(q02);
    }

    public final AbstractC11432t1 a(com.android.tools.r8.graph.D5 d52) {
        if (d52.e0()) {
            return a(d52.d0());
        }
        if (d52.N()) {
            com.android.tools.r8.graph.H5 H10 = d52.H();
            return a(H10.getHolder(), H10.d());
        }
        if (d52.L()) {
            com.android.tools.r8.graph.F5 W10 = d52.W();
            return a(W10.d(), W10.getHolder());
        }
        throw new C5417Jv0();
    }
}
