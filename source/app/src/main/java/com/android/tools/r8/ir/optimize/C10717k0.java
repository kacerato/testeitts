package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.YV;
import java.util.Objects;

public final class C10717k0 extends AbstractC10715j0 {

    public final int f54889c;

    public C10717k0(C10340xw0 c10340xw0, int i10, YV yv) {
        super(c10340xw0, yv);
        this.f54889c = i10;
    }

    @Override
    public final boolean a(int i10) {
        return this.f54889c == i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10717k0)) {
            return false;
        }
        C10717k0 c10717k0 = (C10717k0) obj;
        return this.f54889c == c10717k0.f54889c && this.f54885a == c10717k0.f54885a && this.f54886b == c10717k0.f54886b;
    }

    public final int hashCode() {
        return Objects.hash(this.f54885a, Integer.valueOf(this.f54889c), this.f54886b);
    }
}
