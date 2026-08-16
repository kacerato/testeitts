package com.android.tools.r8.internal;

public final class H60 implements K60 {

    public static final boolean f40680a = true;

    @Override
    public final void a() {
    }

    @Override
    public final int a(int i10) {
        if (f40680a || i10 >= 0) {
            return i10;
        }
        throw new AssertionError();
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, int i10) {
        h52.d().Q0().C().a((com.android.tools.r8.graph.W0) null);
    }
}
