package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.HashMap;

public final class C10072wJ implements Comparator {

    public final HashMap f53471b;

    public C10072wJ(HashMap hashMap) {
        this.f53471b = hashMap;
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        Integer num = (Integer) this.f53471b.get(obj);
        Integer num2 = (Integer) this.f53471b.get(obj2);
        if (num == num2) {
            return 0;
        }
        if (num == null) {
            return -1;
        }
        if (num2 == null) {
            return 1;
        }
        return num.compareTo(num2);
    }
}
