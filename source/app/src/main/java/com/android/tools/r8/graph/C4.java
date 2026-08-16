package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C8085kR;
import java.util.function.Consumer;

public class C4 implements I4 {

    public static final boolean f36194c = true;

    public final H0 f36195b;

    public C4(C8085kR c8085kR, H0 h02) {
        if (!f36194c && c8085kR == null) {
            throw new AssertionError();
        }
        this.f36195b = h02;
    }

    @Override
    public final void a(Consumer consumer, Consumer consumer2) {
        consumer2.accept(this);
    }

    @Override
    public final boolean n() {
        return true;
    }

    @Override
    public final C4 o() {
        return this;
    }
}
