package com.android.tools.r8.internal;

import java.util.Comparator;

public final class C7401gI implements Comparator {

    public final C8234lI f48229b;

    public C7401gI(C8234lI c8234lI) {
        this.f48229b = c8234lI;
    }

    public final int a(int i10, int i11) {
        return this.f48229b.f49924f.compare(Integer.valueOf(i10), Integer.valueOf(i11));
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        return this.f48229b.f49924f.compare((Integer) obj, (Integer) obj2);
    }
}
