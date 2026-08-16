package com.android.tools.r8.internal;

public final class C7374g80 extends AbstractC7500gv {

    public static final C7374g80 f48192a = new C7374g80();

    @Override
    public final boolean a(Object obj, Object obj2) {
        return ((com.android.tools.r8.graph.H5) obj).d() == ((com.android.tools.r8.graph.H5) obj2).d();
    }

    @Override
    public final int a(Object obj) {
        return ((com.android.tools.r8.graph.H5) obj).getReference().hashCode();
    }
}
