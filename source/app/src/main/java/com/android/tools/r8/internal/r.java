package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.function.Function;

public interface r extends ZC {
    AbstractC5361Iw0 a(C4798y c4798y, InterfaceC5825Qx interfaceC5825Qx, AbstractC10458yg abstractC10458yg, com.android.tools.r8.graph.M2 m22);

    default void a(final Q5 q52) {
        if (!AbstractC9016q.f51689a && !a(new Function() {
            @Override
            public final Object apply(Object obj) {
                AbstractC6333Zs0 a10;
                a10 = AbstractC6333Zs0.a(((Q5) obj).equals(Q5.this));
                return a10;
            }
        }).c()) {
            throw new AssertionError();
        }
    }

    default boolean e() {
        return false;
    }

    @Override
    default r f() {
        return this;
    }

    default boolean j() {
        return this instanceof C6249Yf;
    }

    default boolean z() {
        return false;
    }
}
