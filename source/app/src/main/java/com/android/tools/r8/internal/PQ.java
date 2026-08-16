package com.android.tools.r8.internal;

import java.io.ByteArrayInputStream;
import java.util.List;

public final class PQ extends NQ {

    public C9251rQ f43202b;

    public ML f43203c;

    public int f43204d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PQ(com.android.tools.r8.kotlin.S s10) {
        super(0);
        String[] strArr = s10.f55165c;
        C9251rQ c9251rQ = null;
        strArr = strArr.length == 0 ? null : strArr;
        if (strArr != null) {
            String[] strArr2 = s10.f55166d;
            C10503yv c10503yv = AbstractC8910pM.f51506a;
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(N6.a(strArr));
            VL a10 = AbstractC8910pM.a(byteArrayInputStream, strArr2);
            C8544n90 c8544n90 = (C8544n90) AbstractC7851j1.a(C8544n90.f50523w.a(byteArrayInputStream, c10503yv));
            boolean z10 = new ML(s10.f55164b).compareTo(new ML(1, 4, 0)) < 0;
            GJ.c(c8544n90, "<this>");
            c9251rQ = new C9251rQ();
            W90 w90 = c8544n90.f50538q;
            GJ.b(w90, "getTypeTable(...)");
            c9251rQ.f52036a = AbstractC5661Ob0.a(c8544n90, new C5430Kb0(a10, new C4951Bu0(w90), C6341Zw0.f46380b, z10, (List) null, 48));
        }
        ML ml2 = new ML(s10.f55164b);
        int i10 = s10.f55167e;
        this.f43202b = c9251rQ;
        this.f43203c = ml2;
        this.f43204d = i10;
        this.f42580a = true;
    }

    @Override
    public final ML a() {
        return this.f43203c;
    }

    @Override
    public final KL b() {
        KL a10;
        KL a11;
        OQ.a(this.f43202b != null ? "lambda" : "synthetic class", this.f42580a);
        OQ.a(this.f43203c);
        if (this.f43202b == null) {
            ML ml2 = this.f43203c;
            a11 = LL.a((Integer) 3, new int[]{ml2.f42275b, ml2.f42276c, ml2.f42277d}, new String[0], (r15 & 8) != 0 ? null : new String[0], (r15 & 16) != 0 ? null : null, (String) null, Integer.valueOf(this.f43204d));
            return a11;
        }
        try {
            C6676by0 c6676by0 = new C6676by0(new C9243rM(), C6049Ut.f44892b);
            C9251rQ c9251rQ = this.f43202b;
            GJ.a(c9251rQ);
            C8918pQ c8918pQ = c9251rQ.f52036a;
            if (c8918pQ == null) {
                GJ.a("function");
                throw null;
            }
            C8544n90 c10 = AbstractC7176ey0.a(c6676by0, c8918pQ).c();
            if (!c10.isInitialized()) {
                throw new C6834cv0();
            }
            C8866p50 a12 = AbstractC9744uM.a(c10, c6676by0);
            String[] strArr = (String[]) a12.f51436b;
            String[] strArr2 = (String[]) a12.f51437c;
            ML ml3 = this.f43203c;
            a10 = LL.a((Integer) 3, new int[]{ml3.f42275b, ml3.f42276c, ml3.f42277d}, strArr, (r15 & 8) != 0 ? null : strArr2, (r15 & 16) != 0 ? null : null, (String) null, Integer.valueOf(this.f43204d));
            return a10;
        } finally {
        }
    }

    @Override
    public final void a(ML ml2) {
        GJ.c(ml2, "<set-?>");
        this.f43203c = ml2;
    }
}
