package com.android.tools.r8.internal;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Function;

public final class WQ extends LinkedHashMap {

    public final int f45391b;

    public final int f45392c;

    public WQ() {
        super(8, 0.75f);
        this.f45391b = 8;
        this.f45392c = 8;
    }

    public final Map a(Object obj) {
        return new VQ(this.f45392c);
    }

    @Override
    public final boolean removeEldestEntry(Map.Entry entry) {
        return size() > this.f45391b;
    }

    public final void a(C10070wI c10070wI, C10070wI c10070wI2, C10070wI c10070wI3) {
        ((Map) computeIfAbsent(c10070wI, new Function() {
            @Override
            public final Object apply(Object obj) {
                return WQ.this.a(obj);
            }
        })).putIfAbsent(c10070wI2, c10070wI3);
    }
}
