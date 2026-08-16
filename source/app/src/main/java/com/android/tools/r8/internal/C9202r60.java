package com.android.tools.r8.internal;

import java.util.function.Predicate;

public final class C9202r60 implements T50 {

    public static final boolean f51965c = true;

    public final Predicate f51966a;

    public int f51967b = -1;

    public C9202r60(Predicate predicate) {
        this.f51966a = predicate;
    }

    @Override
    public final Predicate a() {
        return this.f51966a;
    }

    @Override
    public final int b() {
        return 1;
    }

    @Override
    public final int c() {
        return 1;
    }

    @Override
    public final void a(int i10) {
        if (!f51965c && this.f51967b != -1) {
            throw new AssertionError();
        }
        this.f51967b = i10;
    }
}
