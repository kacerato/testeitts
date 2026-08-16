package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4785x5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.ArrayList;

public class C6212Xp extends AbstractC8482mp {
    public C6212Xp(int i10, int i11, com.android.tools.r8.graph.D0 d02) {
        super(i10, i11, d02);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004b A[LOOP:0: B:9:0x0045->B:11:0x004b, LOOP_END] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(C6382aB c6382aB) {
        int i10;
        String l02;
        int i11;
        com.android.tools.r8.graph.D0 d02 = (com.android.tools.r8.graph.D0) this.f50429h;
        short s10 = this.f50427f;
        char c10 = this.f50428g;
        c6382aB.getClass();
        com.android.tools.r8.graph.C2 c22 = d02.f36214g;
        ArrayList arrayList = new ArrayList(s10);
        com.android.tools.r8.graph.B2 b22 = c22.f36190e;
        b22.getClass();
        if (b22 != com.android.tools.r8.graph.B2.f36147c) {
            com.android.tools.r8.graph.B2 b23 = c22.f36190e;
            b23.getClass();
            if (b23 != com.android.tools.r8.graph.B2.f36148d && !c22.f36190e.c()) {
                EnumC5592Mw0 enumC5592Mw0 = EnumC5592Mw0.f42461b;
                arrayList.add(c6382aB.b(c10, enumC5592Mw0));
                i10 = enumC5592Mw0.a() + c10;
                l02 = d02.f36213f.l0();
                for (i11 = 1; i11 < l02.length(); i11++) {
                    EnumC5592Mw0 a10 = EnumC5592Mw0.a(l02.charAt(i11));
                    arrayList.add(c6382aB.b(i10, a10));
                    i10 += a10.a();
                }
                C6382aB.a(i10, c10 + s10);
                c6382aB.a(new OJ(d02, null, arrayList));
            }
        }
        i10 = c10;
        l02 = d02.f36213f.l0();
        while (i11 < l02.length()) {
        }
        C6382aB.a(i10, c10 + s10);
        c6382aB.a(new OJ(d02, null, arrayList));
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public final com.android.tools.r8.graph.D0 n() {
        return (com.android.tools.r8.graph.D0) this.f50429h;
    }

    @Override
    public final String t() {
        return "InvokeCustomRange";
    }

    @Override
    public final int v() {
        return 253;
    }

    @Override
    public final String z() {
        return "invoke-custom/range";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6212Xp(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.f38378g);
        if (!C4785x5.f38371i && c4785x5.f38378g == null) {
            throw new AssertionError();
        }
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
        rr.a((com.android.tools.r8.graph.D0) this.f50429h, h52).a(c4798y, m10);
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.a((com.android.tools.r8.graph.D0) this.f50429h);
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        com.android.tools.r8.graph.D0 a10 = rr.a((com.android.tools.r8.graph.D0) this.f50429h, h52);
        AbstractC5635Np.a(this.f50427f, 253, shortBuffer);
        AbstractC5635Np.a(a10, shortBuffer, c4766w5);
        shortBuffer.put((short) this.f50428g);
    }
}
