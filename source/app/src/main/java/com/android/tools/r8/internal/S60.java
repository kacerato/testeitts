package com.android.tools.r8.internal;

import java.util.function.Function;

public interface S60 extends InterfaceC8008jy {
    static {
        boolean z10 = R60.f43804a;
    }

    @Override
    default S60 a(Function function) {
        if (!R60.f43804a && B()) {
            throw new AssertionError();
        }
        if (m()) {
            com.android.tools.r8.graph.M2 m22 = b().f39470c;
            com.android.tools.r8.graph.M2 m23 = (com.android.tools.r8.graph.M2) function.apply(m22);
            if (m22 != m23) {
                return InterfaceC8008jy.b(m23);
            }
        } else if (y()) {
            com.android.tools.r8.graph.M2 j10 = j();
            com.android.tools.r8.graph.M2 m24 = (com.android.tools.r8.graph.M2) function.apply(j10);
            if (j10 != m24) {
                return new C7167ev0(m24, H());
            }
        }
        return this;
    }
}
