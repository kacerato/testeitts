package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4594n3;
import com.android.tools.r8.graph.C4613o3;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.EnumC4629p0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.InterfaceC6522b2;
import java.util.concurrent.ConcurrentLinkedQueue;

public final class C11465v0 extends L0 {

    public static final boolean f57911c = true;

    public C11465v0(N n10) {
        super(n10, new ConcurrentLinkedQueue());
    }

    @Override
    public final void a(AbstractC11279k0 abstractC11279k0) {
        this.f56693b.add(abstractC11279k0);
    }

    @Override
    public final C11448u0 b() {
        return new C11448u0(this);
    }

    @Override
    public final void c(com.android.tools.r8.graph.H2 h22) {
        this.f56693b.add(new C11531z0(h22));
    }

    @Override
    public final void a(InterfaceC6522b2 interfaceC6522b2) {
        if (C8570nJ.b()) {
            this.f56693b.add(new C11262j0(interfaceC6522b2));
        }
    }

    @Override
    public final void b(com.android.tools.r8.graph.H2 h22) {
        boolean z10 = f57911c;
        if (!z10 && h22.f36246f.H()) {
            throw new AssertionError();
        }
        if (!z10 && !h22.isInterface()) {
            throw new AssertionError();
        }
        this.f56693b.add(new C11364p0(h22));
    }

    @Override
    public final void c(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.H5 h52) {
        J j10;
        C4594n3 c4594n3 = this.f56692a.f56810n;
        C4613o3 c4613o3 = (C4613o3) c4594n3.f37507a.get(f52.getReference());
        if (c4613o3 == null || !c4613o3.e()) {
            ConcurrentLinkedQueue concurrentLinkedQueue = this.f56693b;
            if (f52.getAccessFlags().n()) {
                j10 = J.f56640e;
            } else {
                j10 = J.f56638c;
            }
            concurrentLinkedQueue.add(new H0(f52, h52, j10));
        }
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52, X1 x12) {
        this.f56693b.add(new C11414s0(a22, h52, x12));
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        this.f56693b.add(new C11431t0(h52, a22));
    }

    @Override
    public final void a(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.D5 d52, X1 x12) {
        this.f56693b.add(new C11313m0(f52, d52, x12));
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52, int i10, X1 x12) {
        boolean z10 = f57911c;
        if (!z10 && h22.f36246f.H()) {
            throw new AssertionError();
        }
        if (!z10 && h22.isInterface()) {
            throw new AssertionError();
        }
        this.f56693b.add(new C11347o0(h22, h52, i10, x12));
    }

    @Override
    public final void b(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        this.f56693b.add(new E0(h52, a22));
    }

    @Override
    public final void b(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52) {
        this.f56693b.add(new G0(m22, h52));
    }

    @Override
    public final void b(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.H5 h52) {
        J j10;
        C4594n3 c4594n3 = this.f56692a.f56810n;
        C4613o3 c4613o3 = (C4613o3) c4594n3.f37507a.get(f52.getReference());
        if (c4613o3 == null || (c4613o3.f37537b & 8) == 0) {
            ConcurrentLinkedQueue concurrentLinkedQueue = this.f56693b;
            if (f52.getAccessFlags().n()) {
                j10 = J.f56639d;
            } else {
                j10 = J.f56637b;
            }
            concurrentLinkedQueue.add(new H0(f52, h52, j10));
        }
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22) {
        boolean z10 = f57911c;
        if (!z10 && !h22.f36246f.H()) {
            throw new AssertionError();
        }
        if (!z10 && !h22.isInterface()) {
            throw new AssertionError();
        }
        this.f56693b.add(new C11296l0(h22));
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.D5 d52, X1 x12) {
        N n10 = this.f56692a;
        n10.a(h52);
        if (!n10.f56774Q.a(x12, h52)) {
            return false;
        }
        this.f56693b.add(new C11397r0(d52, h52));
        N n11 = this.f56692a;
        n11.getClass();
        if (n11.f56768K.f56716a.contains(h52.d())) {
            return true;
        }
        this.f56693b.add(new F0(h52));
        return true;
    }

    @Override
    public final void a(X1 x12, com.android.tools.r8.graph.H5 h52) {
        this.f56693b.add(new C11381q0(x12, h52));
    }

    @Override
    public final void a(com.android.tools.r8.graph.F5 f52) {
        this.f56693b.add(new C11330n0(f52));
    }

    @Override
    public final void a(com.android.tools.r8.graph.D5 d52, C4666r0 c4666r0, EnumC4629p0 enumC4629p0) {
        this.f56693b.add(new C11482w0(d52, c4666r0, enumC4629p0));
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52) {
        this.f56693b.add(new C11499x0(h52));
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52) {
        this.f56693b.add(new C11515y0(m22, h52));
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52, C11498x c11498x) {
        this.f56693b.add(new D0(a22, h52, c11498x));
    }

    @Override
    public final void a(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.H5 h52) {
        C4594n3 c4594n3 = this.f56692a.f56810n;
        C4613o3 c4613o3 = (C4613o3) c4594n3.f37507a.get(f52.getReference());
        if (c4613o3 == null || (c4613o3.f37537b & 8) == 0 || !c4613o3.e()) {
            this.f56693b.add(new H0(f52, h52));
        }
    }

    @Override
    public final void a(C4554l1 c4554l1, com.android.tools.r8.graph.H5 h52) {
        this.f56693b.add(new I0(c4554l1, h52, K.f56658c));
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, R0 r02) {
        this.f56693b.add(new K0(h22, r02));
    }
}
