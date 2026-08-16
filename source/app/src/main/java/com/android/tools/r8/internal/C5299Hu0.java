package com.android.tools.r8.internal;

public final class C5299Hu0 implements InterfaceC5415Ju0 {

    public static final boolean f40909b = true;

    public final C9603tZ f40910a;

    public C5299Hu0(C9603tZ c9603tZ) {
        if (!f40909b && c9603tZ == null) {
            throw new AssertionError();
        }
        this.f40910a = c9603tZ;
    }

    @Override
    public final com.android.tools.r8.graph.M2 a() {
        return this.f40910a.f52627k;
    }

    public final String toString() {
        return "new:" + ((Object) this.f40910a.f52627k);
    }
}
