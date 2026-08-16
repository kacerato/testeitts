package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.List;

public abstract class AbstractC9839uw0 {
    public static List a(List list, Object obj) {
        if (list == null) {
            list = new ArrayList(1);
        }
        list.add(obj);
        return list;
    }

    public static ArrayList a(Object[] objArr) {
        if (objArr == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            arrayList.add(obj);
        }
        return arrayList;
    }

    public static ArrayList a(int[] iArr) {
        if (iArr == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i10 : iArr) {
            arrayList.add(Integer.valueOf(i10));
        }
        return arrayList;
    }
}
