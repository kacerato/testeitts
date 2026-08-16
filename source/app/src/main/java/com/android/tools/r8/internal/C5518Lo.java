package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4785x5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.ArrayList;

public class C5518Lo extends AbstractC8315lp {
    public C5518Lo(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.c());
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
        c4798y.v().c(abstractC5308Hz, (com.android.tools.r8.graph.M2) this.f50116l).a(c4798y, m10);
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public final String t() {
        return "FilledNewArray";
    }

    @Override
    public final int v() {
        return 36;
    }

    @Override
    public final String z() {
        return "filled-new-array";
    }

    public C5518Lo(int i10, com.android.tools.r8.graph.M2 m22, int i11, int i12, int i13, int i14, int i15) {
        super(i10, m22, i11, i12, i13, i14, i15);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) this.f50116l;
        int i10 = this.f50110f;
        int[] iArr = {this.f50111g, this.f50112h, this.f50113i, this.f50114j, this.f50115k};
        c6382aB.getClass();
        String l22 = m22.f36592f.toString();
        boolean z10 = C6382aB.f46438D;
        int i11 = 0;
        if (!z10 && l22.charAt(0) != '[') {
            throw new AssertionError();
        }
        if (!z10 && l22.length() < 2) {
            throw new AssertionError();
        }
        EnumC5592Mw0 a10 = EnumC5592Mw0.a(l22.charAt(1));
        ArrayList arrayList = new ArrayList(i10 / a10.a());
        while (i11 < i10) {
            arrayList.add(c6382aB.b(iArr[i11], a10));
            if (a10 == EnumC5592Mw0.f42466g || a10 == EnumC5592Mw0.f42467h || a10 == EnumC5592Mw0.f42468i) {
                boolean z11 = C6382aB.f46438D;
                if (!z11 && i11 >= i10 - 1) {
                    throw new AssertionError();
                }
                if (!z11 && iArr[i11] != iArr[i11 + 1] + 1) {
                    throw new AssertionError();
                }
            }
            i11 += a10.a();
        }
        C6382aB.a(i11, i10);
        c6382aB.a(EnumC8071kK.f49585i, (AbstractC4592n1) m22, (com.android.tools.r8.graph.I2) null, arrayList, false);
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, (com.android.tools.r8.graph.M2) this.f50116l);
        AbstractC5635Np.a(this.f50110f, this.f50115k, shortBuffer, 36);
        AbstractC5635Np.a(c10, shortBuffer, c4766w5);
        shortBuffer.put(AbstractC5635Np.d(AbstractC5635Np.e(this.f50114j, this.f50113i), AbstractC5635Np.e(this.f50112h, this.f50111g)));
    }
}
