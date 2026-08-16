package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.internal.C7201f60;
import java.util.function.Function;
import java.util.function.IntFunction;

public final class C7535h60 extends AbstractC6423aT {

    public static final boolean f48442e = true;

    public final C10340xw0[] f48443d;

    public C7535h60(WS ws, C10523z10 c10523z10) {
        super(c10523z10);
        int i10 = ws.f45407i + ws.f45409k;
        this.f48443d = new C10340xw0[i10];
        if (this.f46542a) {
            for (int i11 = 0; i11 < i10; i11++) {
                this.f46543b.a();
            }
        }
    }

    @Override
    public final C10340xw0 a(Object obj, AbstractC9758uT abstractC9758uT) {
        int intValue = ((Integer) obj).intValue();
        C10340xw0 c10340xw0 = this.f48443d[intValue];
        if (c10340xw0 != null) {
            return c10340xw0;
        }
        C10340xw0 c10340xw02 = new C10340xw0(a(intValue), AbstractC8999pu0.f(), null);
        this.f48443d[intValue] = c10340xw02;
        return c10340xw02;
    }

    @Override
    public final C10340xw0 a(int i10, AbstractC8999pu0 abstractC8999pu0) {
        return new C10340xw0(i10, abstractC8999pu0, null);
    }

    @Override
    public final C10340xw0 a(int i10, AbstractC8999pu0 abstractC8999pu0, Function function) {
        C4515j0 c4515j0 = (C4515j0) function.apply(Integer.valueOf(i10));
        C10340xw0 c10340xw0 = this.f48443d[i10];
        if (c10340xw0 == null) {
            C10340xw0 c10340xw02 = new C10340xw0(a(i10), abstractC8999pu0, c4515j0);
            this.f48443d[i10] = c10340xw02;
            return c10340xw02;
        }
        c10340xw0.a(abstractC8999pu0);
        if (c4515j0 != null) {
            if (!c10340xw0.z()) {
                c10340xw0.a(c4515j0);
            }
            if (!f48442e && c4515j0 != c10340xw0.s()) {
                throw new AssertionError();
            }
        }
        return c10340xw0;
    }

    @Override
    public final C7201f60 a(int i10, IntFunction intFunction, C10540z7 c10540z7, Function function, AbstractC9758uT abstractC9758uT) {
        C7201f60 c7201f60 = new C7201f60(a(i10), (W5) intFunction.apply(i10), c10540z7, (C4515j0) function.apply(Integer.valueOf(i10)), C7201f60.a.f47867b);
        C10340xw0 c10340xw0 = this.f48443d[i10];
        if (c10340xw0 != null) {
            if (!f48442e && c10340xw0.j()) {
                throw new AssertionError();
            }
            c10340xw0.f(c7201f60);
        }
        this.f48443d[i10] = c7201f60;
        return c7201f60;
    }
}
