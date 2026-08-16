package com.android.tools.r8.internal;

import java.util.function.Function;
import java.util.function.IntFunction;

public abstract class AbstractC6423aT {

    public static final boolean f46541c = true;

    public final boolean f46542a;

    public final C10523z10 f46543b;

    public AbstractC6423aT(C10523z10 c10523z10) {
        if (!f46541c && c10523z10 == null) {
            throw new AssertionError();
        }
        this.f46542a = c10523z10.b() == 0;
        this.f46543b = c10523z10;
    }

    public final int a(int i10) {
        if (this.f46542a) {
            if (f46541c || i10 < this.f46543b.b()) {
                return i10;
            }
            throw new AssertionError();
        }
        return this.f46543b.a();
    }

    public abstract C7201f60 a(int i10, IntFunction intFunction, C10540z7 c10540z7, Function function, AbstractC9758uT abstractC9758uT);

    public abstract C10340xw0 a(int i10, AbstractC8999pu0 abstractC8999pu0);

    public abstract C10340xw0 a(int i10, AbstractC8999pu0 abstractC8999pu0, Function function);

    public abstract C10340xw0 a(Object obj, AbstractC9758uT abstractC9758uT);
}
