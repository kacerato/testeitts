package com.android.tools.r8.internal;

import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

public final class VD {

    public final ConcurrentHashMap f45000a = new ConcurrentHashMap();

    public final RD a(int i10) {
        return (RD) this.f45000a.computeIfAbsent(Integer.valueOf(i10), new Function() {
            @Override
            public final Object apply(Object obj) {
                return new RD(((Integer) obj).intValue());
            }
        });
    }
}
