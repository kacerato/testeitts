package com.android.tools.r8.internal;

import java.lang.reflect.Array;
import java.util.ArrayList;

public final class V3 extends AbstractC9997vt0 {

    public static final U3 f44946c = new U3();

    public final Class f44947a;

    public final C10331xt0 f44948b;

    public V3(C5713Oz c5713Oz, AbstractC9997vt0 abstractC9997vt0, Class cls) {
        this.f44948b = new C10331xt0(c5713Oz, abstractC9997vt0, cls);
        this.f44947a = cls;
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        c8240lL.c();
        while (c8240lL.k()) {
            arrayList.add(this.f44948b.f53867b.a(c8240lL));
        }
        c8240lL.g();
        int size = arrayList.size();
        if (this.f44947a.isPrimitive()) {
            Object newInstance = Array.newInstance((Class<?>) this.f44947a, size);
            for (int i10 = 0; i10 < size; i10++) {
                Array.set(newInstance, i10, arrayList.get(i10));
            }
            return newInstance;
        }
        return arrayList.toArray((Object[]) Array.newInstance((Class<?>) this.f44947a, size));
    }

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        if (obj == null) {
            c9075qL.i();
            return;
        }
        c9075qL.d();
        int length = Array.getLength(obj);
        for (int i10 = 0; i10 < length; i10++) {
            this.f44948b.a(c9075qL, Array.get(obj, i10));
        }
        c9075qL.f();
    }
}
