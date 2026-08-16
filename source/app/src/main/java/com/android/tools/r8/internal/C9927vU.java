package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class C9927vU extends H {

    public final YQ f53128g;

    public final ArrayList f53129h;

    public final ArrayList f53130i;

    public C9927vU(YQ yq, int[] iArr, YQ[] yqArr) {
        super(171);
        this.f53128g = yq;
        this.f53129h = AbstractC9839uw0.a(iArr);
        this.f53130i = AbstractC9839uw0.a(yqArr);
    }

    @Override
    public final int a() {
        return 12;
    }

    @Override
    public final void a(DX dx) {
        int size = this.f53129h.size();
        int[] iArr = new int[size];
        for (int i10 = 0; i10 < size; i10++) {
            iArr[i10] = ((Integer) this.f53129h.get(i10)).intValue();
        }
        int size2 = this.f53130i.size();
        XQ[] xqArr = new XQ[size2];
        for (int i11 = 0; i11 < size2; i11++) {
            xqArr[i11] = ((YQ) this.f53130i.get(i11)).b();
        }
        dx.a(this.f53128g.b(), iArr, xqArr);
        b(dx);
    }

    @Override
    public final H a(NK nk2) {
        YQ yq = (YQ) nk2.get(this.f53128g);
        ArrayList arrayList = this.f53130i;
        int size = arrayList.size();
        YQ[] yqArr = new YQ[size];
        for (int i10 = 0; i10 < size; i10++) {
            yqArr[i10] = nk2.a((YQ) arrayList.get(i10));
        }
        C9927vU c9927vU = new C9927vU(yq, null, yqArr);
        c9927vU.f53129h.addAll(this.f53129h);
        return c9927vU.a(this);
    }
}
