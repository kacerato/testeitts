package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4785x5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.ArrayList;

public class C5575Mo extends AbstractC8482mp {
    public C5575Mo(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.c());
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
        c4798y.v().c(abstractC5308Hz, (com.android.tools.r8.graph.M2) this.f50429h).a(c4798y, m10);
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public final String t() {
        return "FilledNewArrayRange";
    }

    @Override
    public final int v() {
        return 37;
    }

    @Override
    public final String z() {
        return "filled-new-array/range";
    }

    public C5575Mo(int i10, int i11, com.android.tools.r8.graph.M2 m22) {
        super(i10, i11, m22);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        int i10;
        com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) this.f50429h;
        int i11 = this.f50427f;
        int i12 = this.f50428g;
        c6382aB.getClass();
        String l22 = m22.f36592f.toString();
        boolean z10 = C6382aB.f46438D;
        if (!z10 && l22.charAt(0) != '[') {
            throw new AssertionError();
        }
        if (!z10 && l22.length() < 2) {
            throw new AssertionError();
        }
        EnumC5592Mw0 a10 = EnumC5592Mw0.a(l22.charAt(1));
        ArrayList arrayList = new ArrayList(i11 / a10.a());
        int i13 = i12;
        while (true) {
            i10 = i12 + i11;
            if (i13 >= i10) {
                break;
            }
            arrayList.add(c6382aB.b(i13, a10));
            i13 += a10.a();
        }
        C6382aB.a(i13, i10);
        if (!C6382aB.f46438D && !c6382aB.f46457p.E().P()) {
            throw new AssertionError();
        }
        c6382aB.a(EnumC8071kK.f49585i, (AbstractC4592n1) m22, (com.android.tools.r8.graph.I2) null, arrayList, false);
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, (com.android.tools.r8.graph.M2) this.f50429h);
        AbstractC5635Np.a(this.f50427f, 37, shortBuffer);
        AbstractC5635Np.a(c10, shortBuffer, c4766w5);
        shortBuffer.put((short) this.f50428g);
    }
}
