package com.android.tools.r8.internal;

import java.util.HashSet;
import java.util.function.Predicate;

public final class C10080wN {

    public static final boolean f53483c = true;

    public boolean f53484a = false;

    public final HashSet f53485b = new HashSet();

    public static boolean b(AbstractC9245rN abstractC9245rN) {
        return abstractC9245rN instanceof C6911dN;
    }

    public final C10080wN a(AbstractC10581zN abstractC10581zN) {
        if (abstractC10581zN instanceof C10414yN) {
            this.f53484a = true;
            return this;
        }
        if (abstractC10581zN instanceof C9746uN) {
            this.f53484a = true;
            this.f53485b.addAll(((C9746uN) abstractC10581zN).f52840b.f53744b);
            return this;
        }
        if (!f53483c && !(abstractC10581zN instanceof C10247xN)) {
            throw new AssertionError();
        }
        this.f53485b.addAll(((C10247xN) abstractC10581zN).f53744b);
        return this;
    }

    public final void a() {
        if (!f53483c && !this.f53485b.stream().noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C10080wN.b((AbstractC9245rN) obj);
            }
        })) {
            throw new AssertionError();
        }
    }

    public final C10080wN a(AbstractC9245rN abstractC9245rN) {
        this.f53485b.add(abstractC9245rN);
        return this;
    }
}
