package com.android.tools.r8.internal;

public final class C9933vX extends AbstractC7500gv {

    public static final C9933vX f53136a = new C9933vX();

    @Override
    public final boolean a(Object obj, Object obj2) {
        com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) obj;
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) obj2;
        return a22.f38298g.equals(a23.f38298g) && a22.f36127i.equals(a23.f36127i);
    }

    @Override
    public final int a(Object obj) {
        com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) obj;
        return a22.f36127i.hashCode() + (a22.f38298g.hashCode() * 31);
    }
}
