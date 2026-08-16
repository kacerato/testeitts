package com.android.tools.r8.internal;

public final class Z00 extends AbstractC9366s50 {

    public static final boolean f46141a = true;

    public Z00(boolean z10) {
        if (!f46141a && z10) {
            throw new AssertionError();
        }
    }

    @Override
    public final boolean a() {
        return false;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H5 h52, C7954jg c7954jg, int i10, com.android.tools.r8.graph.M2 m22) {
        if (m22.Q0()) {
            if (c7954jg.a(i10).isUnknown()) {
                return (i10 != 0 || h52.d().w0()) && !c7954jg.b(i10).d().f();
            }
            return true;
        }
        if (f46141a || m22.P0()) {
            return c7954jg.a(i10).b0();
        }
        throw new AssertionError();
    }
}
