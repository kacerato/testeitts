package com.android.tools.r8.internal;

public final class C7602hZ {

    public static final boolean f48578c = true;

    public final com.android.tools.r8.graph.A2 f48579a;

    public final com.android.tools.r8.graph.G0 f48580b;

    public C7602hZ(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.G0 g02) {
        this.f48579a = a22;
        this.f48580b = g02;
        if (!f48578c && a22.f38297f != g02.p()) {
            throw new AssertionError();
        }
    }
}
