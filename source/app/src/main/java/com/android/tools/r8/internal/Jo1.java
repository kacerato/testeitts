package com.android.tools.r8.internal;

import java.util.Comparator;

public final class Jo1 implements Comparator {
    @Override
    public final int compare(Object obj, Object obj2) {
        return ((String) obj).compareTo((String) obj2);
    }
}
