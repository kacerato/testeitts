package com.android.tools.r8.internal;

public final class C5357Iu0 implements InterfaceC5415Ju0 {

    public static final boolean f41246c = true;

    public final com.android.tools.r8.graph.M2 f41247a;

    public final C8024k3 f41248b;

    public C5357Iu0(C8024k3 c8024k3, com.android.tools.r8.graph.M2 m22) {
        boolean z10 = f41246c;
        if (!z10 && c8024k3 == null) {
            throw new AssertionError();
        }
        if (!z10 && m22 == null) {
            throw new AssertionError();
        }
        this.f41248b = c8024k3;
        this.f41247a = m22;
    }

    @Override
    public final com.android.tools.r8.graph.M2 a() {
        return this.f41247a;
    }

    public final String toString() {
        return "this:" + ((Object) this.f41247a);
    }
}
