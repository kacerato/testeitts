package com.android.tools.r8.internal;

import java.util.LinkedHashMap;
import java.util.Map;

public final class UQ extends LinkedHashMap {

    public final int f44754b;

    public UQ() {
        super(26, 0.75f, true);
        this.f44754b = 25;
    }

    @Override
    public final boolean removeEldestEntry(Map.Entry entry) {
        return size() > this.f44754b;
    }
}
