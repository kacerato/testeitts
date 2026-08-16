package com.android.tools.r8.internal;

public final class GL extends IL {

    public final String f40466a;

    public final String f40467b;

    public GL(String str, String str2) {
        GJ.c(str2, "desc");
        this.f40466a = str;
        this.f40467b = str2;
    }

    @Override
    public final String a() {
        return this.f40466a + this.f40467b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GL)) {
            return false;
        }
        GL gl2 = (GL) obj;
        return GJ.a((Object) this.f40466a, (Object) gl2.f40466a) && GJ.a((Object) this.f40467b, (Object) gl2.f40467b);
    }

    public final int hashCode() {
        return this.f40467b.hashCode() + (this.f40466a.hashCode() * 31);
    }
}
