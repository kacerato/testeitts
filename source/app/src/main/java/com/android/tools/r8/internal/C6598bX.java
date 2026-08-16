package com.android.tools.r8.internal;

import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

public class C6598bX {

    public final ConcurrentHashMap f46779a = new ConcurrentHashMap();

    public final C6431aX a(com.android.tools.r8.graph.H5 h52, int i10) {
        return (C6431aX) this.f46779a.computeIfAbsent(new C6431aX(h52, i10), Function.identity());
    }
}
