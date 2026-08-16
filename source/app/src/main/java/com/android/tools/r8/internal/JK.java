package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public abstract class JK {
    public static int a(Iterator it, V60 v60) {
        if (v60 != null) {
            int i10 = 0;
            while (it.hasNext()) {
                if (v60.apply(it.next())) {
                    return i10;
                }
                i10++;
            }
            return -1;
        }
        throw new NullPointerException("predicate");
    }

    public static boolean a(Collection collection, Iterator it) {
        collection.getClass();
        it.getClass();
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= collection.add(it.next());
        }
        return z10;
    }

    public static C10575zK a(ArrayList arrayList) {
        arrayList.getClass();
        return new C10575zK(arrayList);
    }

    public static CK a(Iterator it, InterfaceC5422Jy interfaceC5422Jy) {
        interfaceC5422Jy.getClass();
        return new CK(it, interfaceC5422Jy);
    }

    public static FK a(int i10, int i11, Object[] objArr) {
        if (i10 >= 0) {
            U60.a(0, i10, objArr.length);
            U60.b(i11, i10);
            if (i10 == 0) {
                return FK.f40177e;
            }
            return new FK(i10, i11, objArr);
        }
        throw new IllegalArgumentException();
    }
}
