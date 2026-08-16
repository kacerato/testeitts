package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class C10158wr0 extends H {

    public final int f53626g;

    public final int f53627h;

    public final YQ f53628i;

    public final ArrayList f53629j;

    public C10158wr0(int i10, int i11, YQ yq, YQ... yqArr) {
        super(170);
        this.f53626g = i10;
        this.f53627h = i11;
        this.f53628i = yq;
        this.f53629j = AbstractC9839uw0.a(yqArr);
    }

    @Override
    public final int a() {
        return 11;
    }

    @Override
    public final void a(DX dx) {
        int size = this.f53629j.size();
        XQ[] xqArr = new XQ[size];
        for (int i10 = 0; i10 < size; i10++) {
            xqArr[i10] = ((YQ) this.f53629j.get(i10)).b();
        }
        dx.a(this.f53626g, this.f53627h, this.f53628i.b(), xqArr);
        b(dx);
    }

    @Override
    public final H a(NK nk2) {
        int i10 = this.f53626g;
        int i11 = this.f53627h;
        YQ yq = (YQ) nk2.get(this.f53628i);
        ArrayList arrayList = this.f53629j;
        int size = arrayList.size();
        YQ[] yqArr = new YQ[size];
        for (int i12 = 0; i12 < size; i12++) {
            yqArr[i12] = nk2.a((YQ) arrayList.get(i12));
        }
        return new C10158wr0(i10, i11, yq, yqArr).a(this);
    }
}
