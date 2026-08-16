package com.android.tools.r8.shaking;

public final class X3 extends Y3 {

    public final String f57115c;

    public X3(String str) {
        this.f57115c = str;
    }

    @Override
    public final boolean a(String str) {
        return this.f57115c.equals(str);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof X3) && this.f57115c.equals(((X3) obj).f57115c);
    }

    public final int hashCode() {
        return this.f57115c.hashCode();
    }

    public final String toString() {
        return this.f57115c;
    }
}
