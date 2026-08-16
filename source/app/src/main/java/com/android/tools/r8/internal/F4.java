package com.android.tools.r8.internal;

import java.util.Objects;

public final class F4 {

    public static final F4 f40085d;

    public static final boolean f40086e = true;

    public final AbstractC10330xt f40087a;

    public final F1 f40088b;

    public final boolean f40089c;

    static {
        C10664zt m10 = AbstractC10330xt.m();
        int i10 = F1.f40064a;
        f40085d = new F4(m10, C10504yv0.f54195b, false);
    }

    public F4(AbstractC10330xt abstractC10330xt, F1 f12, boolean z10) {
        this.f40087a = abstractC10330xt;
        this.f40088b = f12;
        this.f40089c = z10;
    }

    public static E4 a() {
        return new E4();
    }

    public final boolean b() {
        if (this == f40085d) {
            return true;
        }
        if (f40086e || !this.f40087a.l() || !this.f40088b.isUnknown() || this.f40089c) {
            return false;
        }
        throw new AssertionError();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && F4.class == obj.getClass()) {
            F4 f42 = (F4) obj;
            if (this.f40088b.equals(f42.f40088b) && this.f40087a.equals(f42.f40087a) && this.f40089c == f42.f40089c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f40088b, this.f40087a, Boolean.valueOf(this.f40089c));
    }

    public static F4 a(AbstractC10330xt abstractC10330xt, F1 f12, boolean z10) {
        if (abstractC10330xt.l() && f12.isUnknown() && !z10) {
            return f40085d;
        }
        return new F4(abstractC10330xt, f12, z10);
    }

    public static AbstractC10330xt a(AbstractC10330xt abstractC10330xt, AbstractC10330xt abstractC10330xt2) {
        if (!abstractC10330xt.equals(abstractC10330xt2)) {
            if (abstractC10330xt.l()) {
                return abstractC10330xt2;
            }
            if (!abstractC10330xt2.l()) {
                return AbstractC10330xt.m();
            }
        }
        return abstractC10330xt;
    }

    public static F1 a(F1 f12, F1 f13) {
        if (!f12.equals(f13)) {
            if (f12.isUnknown()) {
                return f13;
            }
            if (!f13.isUnknown()) {
                int i10 = F1.f40064a;
                return A7.f38535b;
            }
        }
        return f12;
    }
}
