package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4572m0;
import com.android.tools.r8.graph.C4402d0;
import com.android.tools.r8.graph.C4421e0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.C4822z4;

public final class C5563Mi extends AbstractC4572m0 {

    public static final boolean f42347g = true;

    public final InterfaceC8101kZ f42348e;

    public final C5621Ni f42349f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5563Mi(C5621Ni c5621Ni, C4421e0 c4421e0, InterfaceC8101kZ interfaceC8101kZ) {
        super(c5621Ni.f48969b, c4421e0);
        this.f42349f = c5621Ni;
        this.f42348e = interfaceC8101kZ;
    }

    public final void a(C4554l1 c4554l1, boolean z10) {
        C4798y c4798y = this.f37176a;
        c4798y.getClass();
        com.android.tools.r8.graph.E0 g10 = c4798y.g(c4554l1.f38297f);
        com.android.tools.r8.graph.F0 a10 = g10 != null ? g10.a(c4554l1) : null;
        if (a10 == null || !C7769iZ.a(a10, (com.android.tools.r8.graph.H0) this.f37177b)) {
            return;
        }
        InterfaceC8101kZ interfaceC8101kZ = this.f42348e;
        if (a10 instanceof com.android.tools.r8.graph.F5) {
            com.android.tools.r8.graph.F5 f52 = (com.android.tools.r8.graph.F5) a10;
            com.android.tools.r8.graph.A2 b10 = this.f42349f.b(f52, z10);
            synchronized (f52.getHolder().b0()) {
                try {
                    if (f52.getHolder().b(b10) == null) {
                        com.android.tools.r8.graph.H5 a11 = O1.a(b10, f52, z10);
                        a11.getHolder().a(a11.d());
                        if (z10) {
                            interfaceC8101kZ.b(f52, a11, (com.android.tools.r8.graph.H0) this.f37177b);
                        } else {
                            interfaceC8101kZ.a(f52, a11, (com.android.tools.r8.graph.H0) this.f37177b);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return;
        }
        if (a10 instanceof C4402d0) {
            return;
        }
        if (!f42347g && !(a10 instanceof C4822z4)) {
            throw new AssertionError();
        }
        C5621Ni c5621Ni = this.f42349f;
        C7435gZ a12 = C7435gZ.a(c5621Ni.f48969b, a10.j().getHolder(), null);
        if (!C7769iZ.f48968e && a12 == null) {
            throw new AssertionError((Object) "Should be a compilation error if missing nest host on library class.");
        }
        C5094Ef0 c5094Ef0 = c5621Ni.f48969b.E().f50691j;
        c5094Ef0.a(null, C8570nJ.a(a12));
        throw c5094Ef0.f39969c;
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22) {
        h(a22);
    }

    @Override
    public final void c(C4554l1 c4554l1) {
        a(c4554l1, false);
    }

    @Override
    public final void d(com.android.tools.r8.graph.A2 a22) {
        h(a22);
    }

    @Override
    public final void e(C4554l1 c4554l1) {
        a(c4554l1, true);
    }

    @Override
    public final void f(com.android.tools.r8.graph.A2 a22) {
        h(a22);
    }

    @Override
    public final void g(com.android.tools.r8.graph.A2 a22) {
        h(a22);
    }

    public final void h(com.android.tools.r8.graph.A2 a22) {
        if (a22.s0().I0()) {
            C4798y c4798y = this.f37176a;
            c4798y.getClass();
            com.android.tools.r8.graph.E0 g10 = c4798y.g(a22.f38297f);
            com.android.tools.r8.graph.H0 a10 = g10 != null ? g10.a(a22) : null;
            if (a10 == null || !C7769iZ.a(a10, (com.android.tools.r8.graph.H0) this.f37177b)) {
                return;
            }
            InterfaceC8101kZ interfaceC8101kZ = this.f42348e;
            if (!(a10 instanceof com.android.tools.r8.graph.H5)) {
                if (a10 instanceof C4421e0) {
                    if (a10.d().j1()) {
                        this.f42349f.a(a10);
                        return;
                    }
                    return;
                } else {
                    if (!f42347g && !(a10 instanceof com.android.tools.r8.graph.A4)) {
                        throw new AssertionError();
                    }
                    C5621Ni c5621Ni = this.f42349f;
                    C7435gZ a11 = C7435gZ.a(c5621Ni.f48969b, a10.Z().getHolder(), null);
                    if (!C7769iZ.f48968e && a11 == null) {
                        throw new AssertionError((Object) "Should be a compilation error if missing nest host on library class.");
                    }
                    C5094Ef0 c5094Ef0 = c5621Ni.f48969b.E().f50691j;
                    c5094Ef0.a(null, C8570nJ.a(a11));
                    throw c5094Ef0.f39969c;
                }
            }
            if (!a10.d().j1()) {
                a((com.android.tools.r8.graph.H5) a10, interfaceC8101kZ);
                return;
            }
            com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) a10;
            if (!f42347g && !h52.d().j1()) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.E0 a12 = this.f42349f.a(h52);
            C5621Ni c5621Ni2 = this.f42349f;
            if (!C7769iZ.f48968e && !h52.d().j1()) {
                throw new AssertionError();
            }
            C4724u1 c4724u1 = c5621Ni2.f48970c;
            com.android.tools.r8.graph.I2 y02 = h52.getReference().y0();
            com.android.tools.r8.graph.M2 type = a12.getType();
            c4724u1.getClass();
            int size = y02.f36441f.size();
            com.android.tools.r8.graph.M2[] m2Arr = new com.android.tools.r8.graph.M2[size + 1];
            com.android.tools.r8.graph.O2 o22 = y02.f36441f;
            System.arraycopy(o22.f36675b, 0, m2Arr, 0, o22.size());
            m2Arr[size] = type;
            com.android.tools.r8.graph.I2 a13 = c4724u1.a(y02.f36440e, m2Arr);
            com.android.tools.r8.graph.A2 reference = h52.getReference();
            com.android.tools.r8.graph.A2 a14 = c5621Ni2.f48970c.a(reference.f38297f, a13, reference.f38298g);
            synchronized (h52.getHolder().b0()) {
                try {
                    if (h52.getHolder().b(a14) == null) {
                        com.android.tools.r8.graph.H5 a15 = O1.a(a14, h52, this.f42349f.f48970c);
                        a15.getHolder().a(a15.d());
                        interfaceC8101kZ.a(h52, a15, a12, (com.android.tools.r8.graph.H0) this.f37177b);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override
    public final void g(C4554l1 c4554l1) {
        a(c4554l1, false);
    }

    public final void a(com.android.tools.r8.graph.H5 h52, InterfaceC8101kZ interfaceC8101kZ) {
        if (!f42347g && h52.d().j1()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 d10 = this.f42349f.d(h52);
        synchronized (h52.getHolder().b0()) {
            try {
                if (h52.getHolder().b(d10) == null) {
                    com.android.tools.r8.graph.H5 b10 = O1.b(d10, h52, this.f42349f.f48970c);
                    b10.getHolder().a(b10.d());
                    interfaceC8101kZ.a(h52, b10, (com.android.tools.r8.graph.H0) this.f37177b);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22) {
        h(a22);
    }

    @Override
    public final void a(C4554l1 c4554l1) {
        a(c4554l1, true);
    }
}
