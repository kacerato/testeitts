package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4479h1;
import java.util.function.Predicate;

public final class C9018q00 extends AbstractC10644zm0 {

    public static final boolean f51693b = true;

    public static void b(com.android.tools.r8.graph.H2 h22) {
        if (!f51693b && !AbstractC6483ap0.a(h22.y1()).allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean c10;
                c10 = ((AbstractC4479h1) obj).c0().c();
                return c10;
            }
        })) {
            throw new AssertionError();
        }
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        boolean z10 = f51693b;
        if (z10) {
            return true;
        }
        if (!z10 && !h22.f36369x.c()) {
            throw new AssertionError();
        }
        if (z10) {
            return true;
        }
        b(h22);
        return true;
    }

    @Override
    public final String f() {
        return "NoKotlinMetadata";
    }
}
