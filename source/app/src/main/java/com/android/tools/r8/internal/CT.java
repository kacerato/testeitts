package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public abstract class CT {
    public static int a(int i10) {
        AbstractC5496Le.a(i10, "arraySize");
        return HJ.a(i10 + 5 + (i10 / 10));
    }

    public static ArrayList a(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return new ArrayList((Collection) iterable);
        }
        Iterator it = iterable.iterator();
        ArrayList arrayList = new ArrayList();
        JK.a(arrayList, it);
        return arrayList;
    }
}
