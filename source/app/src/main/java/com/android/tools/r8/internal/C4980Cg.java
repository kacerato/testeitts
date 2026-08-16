package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class C4980Cg extends U0 {

    public final C5038Dg f39310c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4980Cg(C5038Dg c5038Dg) {
        super(c5038Dg);
        this.f39310c = c5038Dg;
    }

    @Override
    public final LY a() {
        return this.f39310c;
    }

    @Override
    public final Object[] toArray() {
        ArrayList arrayList = new ArrayList(CT.a(this.f44648b.c()));
        JK.a(arrayList, this.f44648b.g());
        return arrayList.toArray();
    }

    @Override
    public final Object[] toArray(Object[] objArr) {
        ArrayList arrayList = new ArrayList(CT.a(this.f44648b.c()));
        JK.a(arrayList, this.f44648b.g());
        return arrayList.toArray(objArr);
    }
}
