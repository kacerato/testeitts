package com.android.tools.r8.internal;

import java.util.Comparator;
import u8.C15580b;

public final class C4931Bk0 implements Comparator {

    public static final C4931Bk0 f39003b = new C4931Bk0();

    @Override
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        GJ.c(comparable, "a");
        GJ.c(comparable2, C15580b.f118629u);
        return comparable2.compareTo(comparable);
    }

    @Override
    public final Comparator reversed() {
        return C6768cZ.f47078b;
    }
}
