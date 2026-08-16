package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4479h1;

public final class C7195f40 extends AbstractC10644zm0 {
    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        if (h22.c1()) {
            return false;
        }
        return !(JK.a(h22.y1().iterator(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C7195f40.a((AbstractC4479h1) obj);
            }
        }) != -1);
    }

    @Override
    public final String f() {
        return "OnlyStaticDefinitions";
    }

    public static boolean a(AbstractC4479h1 abstractC4479h1) {
        return !abstractC4479h1.w0();
    }
}
