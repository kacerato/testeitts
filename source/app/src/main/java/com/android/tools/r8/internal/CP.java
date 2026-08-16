package com.android.tools.r8.internal;

import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

public final class CP extends DP {

    public static final CP f39215b = new CP(C8081kP.f49607b);

    public static final AbstractC8552nC f39216c = c();

    public final C8081kP f39217a;

    public CP(C8081kP c8081kP) {
        this.f39217a = c8081kP;
    }

    public static void a(C8051kC c8051kC, C8081kP c8081kP) {
        c8051kC.a(Character.toString(c8081kP.a()), new CP(c8081kP));
    }

    public static AbstractC8552nC c() {
        final C8051kC c8051kC = new C8051kC(4);
        C8081kP.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                CP.a(C8051kC.this, (C8081kP) obj);
            }
        });
        return c8051kC.b();
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return System.identityHashCode(this);
    }

    public final String toString() {
        return Character.toString(this.f39217a.a());
    }

    @Override
    public final Object a(Supplier supplier, Function function, Function function2, Function function3) {
        return function.apply(this.f39217a);
    }
}
