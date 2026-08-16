package com.android.tools.r8.internal;

public abstract class AbstractC9520t1 {
    public abstract JC a();

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC9520t1) {
            return a().equals(((AbstractC9520t1) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return a().toString();
    }
}
