package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class RT extends C8498mu0 {

    public final ArrayList f43904f;

    public final ArrayList f43905g;

    public final ArrayList f43906h;

    public RT(int i10, C9666tu0 c9666tu0, YQ[] yqArr, YQ[] yqArr2, int[] iArr, String str) {
        super(i10, c9666tu0, str, 0);
        this.f43904f = AbstractC9839uw0.a(yqArr);
        this.f43905g = AbstractC9839uw0.a(yqArr2);
        this.f43906h = AbstractC9839uw0.a(iArr);
    }

    public final void a(DX dx, boolean z10) {
        int size = this.f43904f.size();
        XQ[] xqArr = new XQ[size];
        XQ[] xqArr2 = new XQ[this.f43905g.size()];
        int[] iArr = new int[this.f43906h.size()];
        for (int i10 = 0; i10 < size; i10++) {
            xqArr[i10] = ((YQ) this.f43904f.get(i10)).b();
            xqArr2[i10] = ((YQ) this.f43905g.get(i10)).b();
            iArr[i10] = ((Integer) this.f43906h.get(i10)).intValue();
        }
        a(dx.a(this.f50454d, this.f50455e, xqArr, xqArr2, iArr, this.f41273b, z10));
    }
}
