package com.android.tools.r8.internal;

import java.util.Comparator;
import u8.C15580b;

public final class C6768cZ implements Comparator {

    public static final C6768cZ f47078b = new C6768cZ();

    @Override
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        GJ.c(comparable, "a");
        GJ.c(comparable2, C15580b.f118629u);
        return comparable.compareTo(comparable2);
    }

    @Override
    public final Comparator reversed() {
        return C4931Bk0.f39003b;
    }
}
