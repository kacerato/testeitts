package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerArray;

public final class C10498yt0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        c9075qL.d();
        int length = ((AtomicIntegerArray) obj).length();
        for (int i10 = 0; i10 < length; i10++) {
            c9075qL.a(r6.get(i10));
        }
        c9075qL.f();
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        ArrayList arrayList = new ArrayList();
        c8240lL.c();
        while (c8240lL.k()) {
            try {
                arrayList.add(Integer.valueOf(c8240lL.o()));
            } catch (NumberFormatException e10) {
                throw new C8407mL(e10);
            }
        }
        c8240lL.g();
        int size = arrayList.size();
        AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
        for (int i10 = 0; i10 < size; i10++) {
            atomicIntegerArray.set(i10, ((Integer) arrayList.get(i10)).intValue());
        }
        return atomicIntegerArray;
    }
}
