package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.YV;
import java.util.Objects;

public final class C10719l0 extends AbstractC10715j0 {

    public final C10340xw0 f54891c;

    public C10719l0(YV yv, C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        super(c10340xw0, yv);
        this.f54891c = c10340xw02;
    }

    @Override
    public final boolean a(int i10) {
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10719l0)) {
            return false;
        }
        C10719l0 c10719l0 = (C10719l0) obj;
        return this.f54891c == c10719l0.f54891c && this.f54885a == c10719l0.f54885a && this.f54886b == c10719l0.f54886b;
    }

    public final int hashCode() {
        return Objects.hash(this.f54885a, this.f54891c, this.f54886b);
    }
}
