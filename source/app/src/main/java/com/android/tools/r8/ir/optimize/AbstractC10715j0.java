package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C8009jy0;
import com.android.tools.r8.internal.YV;

public abstract class AbstractC10715j0 {

    public final C10340xw0 f54885a;

    public final YV f54886b;

    public AbstractC10715j0(C10340xw0 c10340xw0, YV yv) {
        this.f54885a = c10340xw0;
        this.f54886b = yv;
    }

    public static AbstractC10715j0 a(YV yv, C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        if (c10340xw02.d(new C8009jy0())) {
            return new C10717k0(c10340xw0, c10340xw02.r().J().u2(), yv);
        }
        return new C10719l0(yv, c10340xw0, c10340xw02);
    }

    public abstract boolean a(int i10);
}
