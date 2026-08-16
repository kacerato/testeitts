package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4785x5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;

public class C5577Mp extends AbstractC6649bp {
    public C5577Mp(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.c());
    }

    public com.android.tools.r8.graph.M2 O() {
        return (com.android.tools.r8.graph.M2) this.f46871h;
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
        c4798y.v().c(abstractC5308Hz, O()).a(c4798y, m10);
    }

    @Override
    public final C5577Mp i() {
        return this;
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public final String t() {
        return "InstanceOf";
    }

    @Override
    public final int v() {
        return 32;
    }

    @Override
    public final String z() {
        return "instance-of";
    }

    public C5577Mp(int i10, int i11, com.android.tools.r8.graph.M2 m22) {
        super(i10, i11, m22);
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.c(O());
    }

    @Override
    public final void a(C6382aB c6382aB) {
        byte b10 = this.f46869f;
        byte b11 = this.f46870g;
        com.android.tools.r8.graph.M2 O10 = O();
        c6382aB.a(c6382aB.f46462u.g(), new C8391mE(c6382aB.a(b10, 2, AbstractC8999pu0.k()), c6382aB.b(b11, EnumC5592Mw0.f42461b), O10));
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, O());
        AbstractC5635Np.a(this.f46870g, this.f46869f, shortBuffer, 32);
        AbstractC5635Np.a(c10, shortBuffer, c4766w5);
    }
}
