package com.android.tools.r8.internal;

public final class JN {

    public static final JN f41385b = new JN("");

    public static final boolean f41386c = true;

    public final String f41387a;

    public JN(String str) {
        if (!f41386c && str == null) {
            throw new AssertionError();
        }
        this.f41387a = str;
    }

    public final boolean a() {
        return this.f41387a.isEmpty();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof JN) {
            return this.f41387a.equals(((JN) obj).f41387a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f41387a.hashCode();
    }

    public final String toString() {
        return this.f41387a;
    }
}
