package com.android.tools.r8.internal;

public final class CO extends DO {

    public static final CO f39210c = new CO(C8415mP.a(), true);

    public static final boolean f39211d = true;

    public final C8415mP f39212a;

    public final boolean f39213b;

    public CO(C8415mP c8415mP, boolean z10) {
        if (!f39211d && c8415mP == null) {
            throw new AssertionError();
        }
        this.f39212a = c8415mP;
        this.f39213b = z10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CO) {
            return this.f39212a.equals(((CO) obj).f39212a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f39212a.hashCode();
    }

    public final String toString() {
        String c8415mP = this.f39212a.toString();
        if (this.f39213b) {
            return c8415mP;
        }
        return "excl(" + c8415mP + ")";
    }
}
