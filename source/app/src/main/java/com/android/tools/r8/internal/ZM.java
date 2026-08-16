package com.android.tools.r8.internal;

public final class ZM {

    public static final boolean f46229b = true;

    public final MM f46230a;

    public ZM(MM mm2) {
        if (!f46229b && mm2 == null) {
            throw new AssertionError();
        }
        this.f46230a = mm2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ZM.class != obj.getClass()) {
            return false;
        }
        return this.f46230a.equals(((ZM) obj).f46230a);
    }

    public final int hashCode() {
        return this.f46230a.hashCode();
    }

    public final String toString() {
        return this.f46230a.toString();
    }
}
