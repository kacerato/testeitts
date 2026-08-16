package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLongArray;

public final class C5597Mz extends AbstractC9997vt0 {

    public final AbstractC9997vt0 f42474a;

    public C5597Mz(AbstractC9997vt0 abstractC9997vt0) {
        this.f42474a = abstractC9997vt0;
    }

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        AtomicLongArray atomicLongArray = (AtomicLongArray) obj;
        c9075qL.d();
        int length = atomicLongArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            this.f42474a.a(c9075qL, Long.valueOf(atomicLongArray.get(i10)));
        }
        c9075qL.f();
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        ArrayList arrayList = new ArrayList();
        c8240lL.c();
        while (c8240lL.k()) {
            arrayList.add(Long.valueOf(((Number) this.f42474a.a(c8240lL)).longValue()));
        }
        c8240lL.g();
        int size = arrayList.size();
        AtomicLongArray atomicLongArray = new AtomicLongArray(size);
        for (int i10 = 0; i10 < size; i10++) {
            atomicLongArray.set(i10, ((Long) arrayList.get(i10)).longValue());
        }
        return atomicLongArray;
    }
}
