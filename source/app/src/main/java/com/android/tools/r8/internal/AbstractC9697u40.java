package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import java.util.function.Function;

public abstract class AbstractC9697u40 {
    public static InterfaceC10033w5 a(final Function function, final String str) {
        return new InterfaceC10033w5() {
            @Override
            public final W9 a(C7437ga c7437ga, C4724u1 c4724u1) {
                return AbstractC9697u40.a(Function.this, str, c7437ga, c4724u1);
            }
        };
    }

    public static W9 a(Function function, String str, C7437ga c7437ga, C4724u1 c4724u1) {
        return new C7437ga(182, c4724u1.a((com.android.tools.r8.graph.M2) function.apply(c4724u1), c7437ga.V().f36127i, str), false);
    }

    public static InterfaceC10033w5 b() {
        return a(new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.M2 m22;
                m22 = ((C4724u1) obj).f38053g3;
                return m22;
            }
        }, "getAsInt");
    }

    public static InterfaceC10033w5 c() {
        return a(new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.M2 m22;
                m22 = ((C4724u1) obj).f38061h3;
                return m22;
            }
        }, "getAsLong");
    }

    public static InterfaceC10033w5 d() {
        return a(new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.M2 m22;
                m22 = ((C4724u1) obj).f38037e3;
                return m22;
            }
        }, "get");
    }

    public static InterfaceC10033w5 a() {
        return a(new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.M2 m22;
                m22 = ((C4724u1) obj).f38045f3;
                return m22;
            }
        }, "getAsDouble");
    }
}
