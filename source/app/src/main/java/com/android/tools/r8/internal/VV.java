package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;

public abstract class VV {
    public static TV a(C4798y c4798y, ExecutorService executorService) {
        boolean z10 = TV.f44490h;
        AbstractC5308Hz v10 = c4798y.v();
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap();
        new com.android.tools.r8.graph.R5(c4798y, new UV(ConcurrentHashMap.newKeySet(), new SV(c4798y, v10, concurrentHashMap, concurrentHashMap2))).a(executorService);
        return new TV(c4798y, v10, concurrentHashMap, concurrentHashMap2);
    }
}
