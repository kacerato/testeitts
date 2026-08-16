package com.android.tools.r8.internal;

public final class OP extends JP {

    public final String f42872a;

    public final String f42873b;

    public OP(String str, String str2) {
        GJ.c(str, "enumClassName");
        GJ.c(str2, "enumEntryName");
        this.f42872a = str;
        this.f42873b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OP)) {
            return false;
        }
        OP op = (OP) obj;
        return GJ.a((Object) this.f42872a, (Object) op.f42872a) && GJ.a((Object) this.f42873b, (Object) op.f42873b);
    }

    public final int hashCode() {
        return this.f42873b.hashCode() + (this.f42872a.hashCode() * 31);
    }

    @Override
    public final String toString() {
        return "EnumValue(" + this.f42872a + '.' + this.f42873b + ')';
    }
}
