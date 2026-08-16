package com.android.tools.r8.graph;

public abstract class E extends AbstractC4592n1 {

    public static final boolean f36241c = true;

    public volatile int f36242b = -1;

    public abstract boolean c(Object obj);

    public final boolean equals(Object obj) {
        return this == obj || c(obj);
    }

    public final int hashCode() {
        int i10 = this.f36242b;
        if (i10 == -1) {
            i10 = k0();
            if (i10 == -1) {
                i10 = 0;
            }
            this.f36242b = i10;
        }
        if (!f36241c) {
            j(i10);
        }
        return i10;
    }

    public final void j(int i10) {
        int k02 = k0();
        if (k02 == -1) {
            k02 = 0;
        }
        if (f36241c || i10 == k02) {
            return;
        }
        throw new AssertionError((Object) ("Hash code for " + ((Object) this) + " has changed from " + this.f36242b + " to " + k02));
    }

    public abstract int k0();
}
