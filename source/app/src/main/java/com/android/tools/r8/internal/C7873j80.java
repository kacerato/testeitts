package com.android.tools.r8.internal;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class C7873j80 extends AbstractC8374m80 {
    @Override
    public final Map a() {
        return new ConcurrentHashMap();
    }

    @Override
    public final Map j(int i10) {
        return new ConcurrentHashMap(i10);
    }
}
