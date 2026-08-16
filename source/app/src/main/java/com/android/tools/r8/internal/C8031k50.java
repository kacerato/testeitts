package com.android.tools.r8.internal;

import java.util.Comparator;

public final class C8031k50 implements Comparator {
    @Override
    public final int compare(Object obj, Object obj2) {
        Integer valueOf = Integer.valueOf(((Number) ((C8866p50) obj).f51436b).intValue());
        Integer valueOf2 = Integer.valueOf(((Number) ((C8866p50) obj2).f51436b).intValue());
        if (valueOf == valueOf2) {
            return 0;
        }
        return valueOf.compareTo(valueOf2);
    }
}
