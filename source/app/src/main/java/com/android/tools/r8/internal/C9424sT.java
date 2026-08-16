package com.android.tools.r8.internal;

import org.openjdk.tools.doclint.DocLint;

public final class C9424sT {

    public static final boolean f52364b = true;

    public final int f52365a;

    public C9424sT(int i10) {
        this.f52365a = i10;
    }

    public final boolean a() {
        return this.f52365a < 0;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        return (obj instanceof C9424sT) && this.f52365a == ((C9424sT) obj).f52365a;
    }

    public final int hashCode() {
        return this.f52365a;
    }

    public final String toString() {
        if (!a()) {
            if (!f52364b && a()) {
                throw new AssertionError();
            }
            return "v" + this.f52365a;
        }
        boolean z10 = f52364b;
        if (!z10 && !a()) {
            throw new AssertionError();
        }
        int i10 = (this.f52365a & Integer.MAX_VALUE) >> 16;
        if (!z10 && !a()) {
            throw new AssertionError();
        }
        return "phi(" + i10 + DocLint.SEPARATOR + (this.f52365a & 65535) + ")";
    }
}
