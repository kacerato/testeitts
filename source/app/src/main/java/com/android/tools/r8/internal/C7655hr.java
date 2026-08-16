package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4785x5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;

public class C7655hr extends AbstractC6649bp {
    public C7655hr(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.c());
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
        c4798y.v().c(abstractC5308Hz, (com.android.tools.r8.graph.M2) this.f46871h).a(c4798y, m10);
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public final String t() {
        return "NewArray";
    }

    @Override
    public final int v() {
        return 35;
    }

    @Override
    public final String z() {
        return "new-array";
    }

    public C7655hr(int i10, int i11, com.android.tools.r8.graph.M2 m22) {
        super(i10, i11, m22);
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.f((com.android.tools.r8.graph.M2) this.f46871h);
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, (com.android.tools.r8.graph.M2) this.f46871h);
        AbstractC5635Np.a(this.f46870g, this.f46869f, shortBuffer, 35);
        AbstractC5635Np.a(c10, shortBuffer, c4766w5);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        byte b10 = this.f46869f;
        byte b11 = this.f46870g;
        com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) this.f46871h;
        if (!C6382aB.f46438D) {
            c6382aB.getClass();
            if (!m22.E0()) {
                throw new AssertionError();
            }
        }
        c6382aB.a(c6382aB.f46462u.g(), new C8769oZ(c6382aB.a(b10, 2, AbstractC8999pu0.a(m22, C8854p10.b(), (C4798y<?>) c6382aB.f46457p)), c6382aB.b(b11, EnumC5592Mw0.f42462c), m22));
    }
}
