package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4785x5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.ArrayList;

public class C6155Wp extends AbstractC8315lp {
    public C6155Wp(int i10, com.android.tools.r8.graph.D0 d02, int i11, int i12, int i13, int i14, int i15) {
        super(i10, d02, i11, i12, i13, i14, i15);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        com.android.tools.r8.graph.D0 d02 = (com.android.tools.r8.graph.D0) this.f50116l;
        byte b10 = this.f50110f;
        int[] iArr = {this.f50111g, this.f50112h, this.f50113i, this.f50114j, this.f50115k};
        c6382aB.getClass();
        com.android.tools.r8.graph.C2 c22 = d02.f36214g;
        ArrayList arrayList = new ArrayList(b10);
        com.android.tools.r8.graph.B2 b22 = c22.f36190e;
        b22.getClass();
        int i10 = 0;
        if (b22 != com.android.tools.r8.graph.B2.f36147c) {
            com.android.tools.r8.graph.B2 b23 = c22.f36190e;
            b23.getClass();
            if (b23 != com.android.tools.r8.graph.B2.f36148d && !c22.f36190e.c()) {
                int i11 = iArr[0];
                EnumC5592Mw0 enumC5592Mw0 = EnumC5592Mw0.f42461b;
                arrayList.add(c6382aB.b(i11, enumC5592Mw0));
                i10 = enumC5592Mw0.a();
            }
        }
        String l02 = d02.f36213f.l0();
        for (int i12 = 1; i12 < l02.length(); i12++) {
            EnumC5592Mw0 a10 = EnumC5592Mw0.a(l02.charAt(i12));
            arrayList.add(c6382aB.b(iArr[i10], a10));
            i10 += a10.a();
        }
        c6382aB.a(new OJ(d02, null, arrayList));
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public final com.android.tools.r8.graph.D0 n() {
        return (com.android.tools.r8.graph.D0) this.f50116l;
    }

    @Override
    public final String t() {
        return "InvokeCustom";
    }

    @Override
    public final int v() {
        return 252;
    }

    @Override
    public final String z() {
        return "invoke-custom";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6155Wp(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.f38378g);
        if (!C4785x5.f38371i && c4785x5.f38378g == null) {
            throw new AssertionError();
        }
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
        rr.a((com.android.tools.r8.graph.D0) this.f50116l, h52).a(c4798y, m10);
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.a((com.android.tools.r8.graph.D0) this.f50116l);
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(this.f50110f, this.f50115k, shortBuffer, 252);
        AbstractC5635Np.a(rr.a((com.android.tools.r8.graph.D0) this.f50116l, h52), shortBuffer, c4766w5);
        shortBuffer.put(AbstractC5635Np.d(AbstractC5635Np.e(this.f50114j, this.f50113i), AbstractC5635Np.e(this.f50112h, this.f50111g)));
    }
}
