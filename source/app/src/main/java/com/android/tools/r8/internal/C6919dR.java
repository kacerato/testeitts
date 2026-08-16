package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.function.Consumer;

public final class C6919dR extends AbstractC6586bR {

    public static final boolean f47404h = true;

    public final C4798y f47405f;

    public final com.android.tools.r8.graph.A2 f47406g;

    public C6919dR(com.android.tools.r8.graph.A2 a22, boolean z10, com.android.tools.r8.graph.A2 a23, C4798y c4798y) {
        super(a23, EnumC8071kK.f49582f, z10);
        this.f47406g = a22;
        this.f47405f = c4798y;
    }

    @Override
    public final com.android.tools.r8.graph.H5 a(final InterfaceC6342Zx interfaceC6342Zx, InterfaceC9323rr0 interfaceC9323rr0, Consumer consumer) {
        com.android.tools.r8.graph.H2 d02 = this.f47405f.g(this.f47406g.f38297f).d0();
        com.android.tools.r8.graph.N4 b02 = d02.b0();
        com.android.tools.r8.graph.A2 a22 = this.f47406g;
        InterfaceC5422Jy interfaceC5422Jy = new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return C6919dR.this.a(interfaceC6342Zx, (C4516j1) obj);
            }
        };
        b02.getClass();
        b02.f36639c = C4516j1.f37311v;
        C4516j1 a10 = b02.f36638b.a(a22, interfaceC5422Jy);
        if (a10 != null) {
            boolean z10 = f47404h;
            if (!z10 && (this.f47405f.E().f50697l instanceof ClassFileConsumer) && !a10.Q0().t0()) {
                throw new AssertionError();
            }
            if (!z10 && this.f47405f.E().P() && !a10.Q0().v0() && this.f47405f.E().f50596E1 == null) {
                throw new AssertionError();
            }
            return new com.android.tools.r8.graph.H5(d02, a10);
        }
        com.android.tools.r8.graph.H5 e10 = d02.e(this.f48554a);
        boolean z11 = f47404h;
        if (!z11 && e10 == null) {
            throw new AssertionError();
        }
        if (z11 || e10.d().n1()) {
            return e10;
        }
        throw new AssertionError();
    }

    public final C4516j1 a(InterfaceC6342Zx interfaceC6342Zx, C4516j1 c4516j1) {
        com.android.tools.r8.graph.L4 l42 = c4516j1.f37314g;
        com.android.tools.r8.graph.L4 l43 = new com.android.tools.r8.graph.L4(l42.f37196b, l42.f37197c);
        l43.y();
        l43.A();
        l43.w();
        AbstractC4497i0 Q02 = c4516j1.Q0();
        C4724u1 b10 = this.f47405f.b();
        C4516j1.a a10 = new C4516j1.a(true).a(this.f48554a).a(l43);
        a10.f37332d = c4516j1.A0();
        a10.f37333e = c4516j1.k0();
        a10.f37335g = c4516j1.f37316i;
        C4516j1.a a11 = a10.a(Q02.a(this.f48554a, true, c4516j1.getReference(), c4516j1.F0(), b10));
        a11.f37340l = c4516j1.f37261e;
        a11.f37341m = c4516j1.f37322o;
        C4516j1 a12 = a11.a();
        a12.a(this.f47405f, c4516j1);
        interfaceC6342Zx.b(c4516j1.getReference(), this.f48554a);
        C4516j1.a(a12.Q0(), this.f48554a.w0(), this.f47405f);
        return a12;
    }

    @Override
    public final com.android.tools.r8.graph.A2 a() {
        return this.f47406g;
    }
}
