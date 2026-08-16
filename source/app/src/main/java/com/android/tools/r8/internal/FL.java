package com.android.tools.r8.internal;

public final class FL extends IL {

    public final String f40179a;

    public final String f40180b;

    public FL(String str, String str2) {
        this.f40179a = str;
        this.f40180b = str2;
    }

    @Override
    public final String a() {
        return this.f40179a + ':' + this.f40180b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FL)) {
            return false;
        }
        FL fl2 = (FL) obj;
        return GJ.a((Object) this.f40179a, (Object) fl2.f40179a) && GJ.a((Object) this.f40180b, (Object) fl2.f40180b);
    }

    public final int hashCode() {
        return this.f40180b.hashCode() + (this.f40179a.hashCode() * 31);
    }
}
