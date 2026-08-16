package com.android.tools.r8.internal;

import java.util.LinkedHashMap;
import java.util.Map;

public final class VQ extends LinkedHashMap {

    public final int f45048b;

    public VQ(int i10) {
        super(i10, 0.75f);
        this.f45048b = i10;
    }

    @Override
    public final boolean removeEldestEntry(Map.Entry entry) {
        return size() > this.f45048b;
    }
}
