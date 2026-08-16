package com.android.tools.r8.internal;

import java.util.ArrayList;

public abstract class AbstractC5168Fn {

    public static final boolean f40309d = true;

    public final AbstractC10561zE f40310a;

    public int f40311b = -1;

    public int f40312c = -1;

    public AbstractC5168Fn(AbstractC10561zE abstractC10561zE) {
        if (!f40309d && abstractC10561zE == null) {
            throw new AssertionError();
        }
        this.f40310a = abstractC10561zE;
    }

    public final int a() {
        if (f40309d || this.f40311b >= 0) {
            return this.f40311b;
        }
        throw new AssertionError(this);
    }

    public abstract int a(C5458Kn c5458Kn);

    public abstract void a(C5458Kn c5458Kn, ArrayList arrayList);

    public abstract boolean a(AbstractC5168Fn abstractC5168Fn, C5458Kn c5458Kn);

    public abstract int b();

    public abstract int c();

    public abstract int d();
}
