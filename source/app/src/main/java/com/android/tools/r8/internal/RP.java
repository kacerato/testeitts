package com.android.tools.r8.internal;

public final class RP extends JP {

    public final String f43892a;

    public RP(String str) {
        GJ.c(str, "className");
        this.f43892a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof RP) && GJ.a((Object) this.f43892a, (Object) ((RP) obj).f43892a);
    }

    public final int hashCode() {
        return this.f43892a.hashCode();
    }

    @Override
    public final String toString() {
        return "KClassValue(" + this.f43892a + ')';
    }
}
