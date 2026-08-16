package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Set;
import java.util.function.Predicate;

public final class W60 {

    public final Set f45304a = AbstractC5513Ll0.c();

    public final ArrayList f45305b = new ArrayList();

    public final boolean a(Object obj) {
        if (this.f45304a.contains(obj)) {
            return true;
        }
        ArrayList arrayList = this.f45305b;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj2 = arrayList.get(i10);
            i10++;
            if (((Predicate) obj2).test(obj)) {
                return true;
            }
        }
        return false;
    }
}
