package com.android.tools.r8.internal;

import java.util.List;

public abstract class AbstractC7774ib {
    public static C8103ka a(List list) {
        W9 w92 = list.isEmpty() ? null : (W9) list.get(list.size() - 1);
        if (w92 != null && (w92 instanceof C8103ka)) {
            return w92.m();
        }
        C8103ka c8103ka = new C8103ka();
        list.add(c8103ka);
        return c8103ka;
    }
}
