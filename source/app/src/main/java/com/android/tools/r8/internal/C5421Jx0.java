package com.android.tools.r8.internal;

import java.util.function.Predicate;

public final class C5421Jx0 implements T50 {

    public static final boolean f41535c = true;

    public final Predicate f41536a;

    public int f41537b = -1;

    public C5421Jx0(Predicate predicate) {
        this.f41536a = predicate;
    }

    @Override
    public final Predicate a() {
        return this.f41536a;
    }

    @Override
    public final int b() {
        return 0;
    }

    @Override
    public final int c() {
        return Integer.MAX_VALUE;
    }

    @Override
    public final void a(int i10) {
        if (!f41535c && this.f41537b != -1) {
            throw new AssertionError();
        }
        this.f41537b = i10;
    }
}
