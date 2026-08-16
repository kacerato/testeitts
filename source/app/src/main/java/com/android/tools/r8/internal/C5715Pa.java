package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.concurrent.ExecutorService;

public final class C5715Pa extends AbstractC5773Qa {

    public final ArrayList f43270a;

    public C5715Pa(ArrayList arrayList) {
        this.f43270a = arrayList;
    }

    @Override
    public final void a(Collection collection, AbstractC5947Ta abstractC5947Ta, ExecutorService executorService, C8659ns0 c8659ns0) {
        Collection a10 = C6246Ye.a(collection, Comparator.comparing(new com.android.tools.r8.errors.q()));
        ArrayList arrayList = this.f43270a;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ((InterfaceC5599Na) obj).a(a10, abstractC5947Ta, executorService, c8659ns0);
        }
    }
}
