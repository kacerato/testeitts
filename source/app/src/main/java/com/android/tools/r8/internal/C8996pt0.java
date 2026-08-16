package com.android.tools.r8.internal;

import java.util.List;

public final class C8996pt0 {

    public final YQ f51650a;

    public final YQ f51651b;

    public final YQ f51652c;

    public final String f51653d;

    public List f51654e;

    public List f51655f;

    public C8996pt0(YQ yq, YQ yq2, YQ yq3, String str) {
        this.f51650a = yq;
        this.f51651b = yq2;
        this.f51652c = yq3;
        this.f51653d = str;
    }

    public final void a(DX dx) {
        XQ b10 = this.f51650a.b();
        XQ b11 = this.f51651b.b();
        YQ yq = this.f51652c;
        dx.a(b10, b11, yq == null ? null : yq.b(), this.f51653d);
        List list = this.f51654e;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                C8498mu0 c8498mu0 = (C8498mu0) this.f51654e.get(i10);
                c8498mu0.a(dx.b(c8498mu0.f50454d, c8498mu0.f50455e, c8498mu0.f41273b, true));
            }
        }
        List list2 = this.f51655f;
        if (list2 != null) {
            int size2 = list2.size();
            for (int i11 = 0; i11 < size2; i11++) {
                C8498mu0 c8498mu02 = (C8498mu0) this.f51655f.get(i11);
                c8498mu02.a(dx.b(c8498mu02.f50454d, c8498mu02.f50455e, c8498mu02.f41273b, false));
            }
        }
    }
}
