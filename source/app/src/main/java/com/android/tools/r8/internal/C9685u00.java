package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;

public final class C9685u00 extends AbstractC10644zm0 {
    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        return !AbstractC9907vK.b(h22.z1(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((C4516j1) obj).l1();
            }
        });
    }

    @Override
    public final String f() {
        return "NoNativeMethods";
    }
}
