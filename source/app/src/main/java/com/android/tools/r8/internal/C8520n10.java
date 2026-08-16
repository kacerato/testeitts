package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C8520n10 extends F1 {

    public static final boolean f50485c = true;

    public final F1 f50486b;

    public C8520n10(F1 f12) {
        if (!f50485c) {
            f12.getClass();
            if (f12 instanceof C5341Im0) {
                throw new AssertionError();
            }
        }
        this.f50486b = f12;
    }

    public static F1 a(F1 f12) {
        f12.getClass();
        return ((f12 instanceof A7) || f12.isUnknown() || (f12 instanceof C5283Hm0) || (f12 instanceof C8520n10)) ? f12 : new C8520n10(f12);
    }

    @Override
    public final C8520n10 I() {
        return this;
    }

    @Override
    public final F1 b(C4798y c4798y, com.android.tools.r8.graph.M2 m22, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        F1 b10 = this.f50486b.b(c4798y, m22, abstractC5308Hz, abstractC5308Hz2);
        b10.getClass();
        return b10 instanceof C5341Im0 ? C10504yv0.f54195b : new C8520n10(b10);
    }

    @Override
    public final boolean b0() {
        return true;
    }

    @Override
    public final boolean equals(Object obj) {
        return obj != null && C8520n10.class == obj.getClass() && this.f50486b.equals(((C8520n10) obj).f50486b);
    }

    @Override
    public final int hashCode() {
        return this.f50486b.hashCode() * 7;
    }

    @Override
    public final String toString() {
        return "Null or " + this.f50486b.toString();
    }
}
