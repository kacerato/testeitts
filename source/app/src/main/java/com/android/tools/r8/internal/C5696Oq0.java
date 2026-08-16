package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Comparator;

public final class C5696Oq0 implements InterfaceC5407Jq0 {

    public final US f43054a;

    public final US f43055b;

    public C5696Oq0(US us, US us2) {
        this.f43054a = us;
        this.f43055b = us2;
    }

    @Override
    public final int a(SG sg2, SG sg3, final AbstractC8953pf abstractC8953pf) {
        final US us = this.f43054a;
        return AbstractC8619nf.a(sg2, sg3, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int a10;
                a10 = InterfaceC5465Kq0.this.a(obj, obj2, abstractC8953pf);
                return a10;
            }
        });
    }

    @Override
    public final void a(SG sg2, AbstractC9213rA abstractC9213rA) {
        ArrayList arrayList = new ArrayList(sg2.o());
        arrayList.sort(new C7752iQ0());
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            int intValue = ((Integer) obj).intValue();
            ((C9547tA) abstractC9213rA).f52553a.a(intValue);
            this.f43055b.a(sg2.get(intValue), abstractC9213rA);
        }
    }
}
