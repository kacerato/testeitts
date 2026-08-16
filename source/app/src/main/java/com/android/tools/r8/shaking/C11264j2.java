package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4554l1;

public final class C11264j2 implements com.android.tools.r8.dex.M {

    public final C11298l2 f57448a;

    public C11264j2(C11298l2 c11298l2) {
        this.f57448a = c11298l2;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.L2 l22) {
        return false;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        this.f57448a.f57504c.accept(h22.f36245e);
        return false;
    }

    @Override
    public final boolean a(C4554l1 c4554l1) {
        this.f57448a.f57504c.accept(c4554l1.f38297f);
        this.f57448a.f57504c.accept(c4554l1.f37449i);
        return false;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.A2 a22) {
        this.f57448a.f57504c.accept(a22.f38297f);
        a(a22.f36127i);
        return false;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.I2 i22) {
        this.f57448a.f57504c.accept(i22.f36440e);
        for (com.android.tools.r8.graph.M2 m22 : i22.f36441f.f36675b) {
            this.f57448a.f57504c.accept(m22);
        }
        return false;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        this.f57448a.f57504c.accept(m22);
        return false;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.D0 d02) {
        throw new AssertionError((Object) "CallSite are not supported when tracing for legacy multi dex");
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.C2 c22) {
        throw new AssertionError((Object) "DexMethodHandle are not supported when tracing for legacy multi dex");
    }
}
