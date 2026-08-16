package com.android.tools.r8.internal;

public final class XO extends ZO {

    public static final XO f45678b = new XO(C10585zP.f54372a);

    public static final boolean f45679c = true;

    public final DP f45680a;

    public XO(DP dp) {
        if (!f45679c && dp == null) {
            throw new AssertionError();
        }
        this.f45680a = dp;
    }

    @Override
    public final DP a() {
        return this.f45680a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || XO.class != obj.getClass()) {
            return false;
        }
        return this.f45680a.equals(((XO) obj).f45680a);
    }

    public final int hashCode() {
        return this.f45680a.hashCode();
    }

    public final String toString() {
        return this.f45680a.toString();
    }
}
