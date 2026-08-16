package com.android.tools.r8.internal;

public final class C5847Rf0 {

    public final EnumC8289lg0 f43952a;

    public final String f43953b;

    public final String f43954c;

    public C5847Rf0(EnumC8289lg0 enumC8289lg0, String str, String str2) {
        this.f43952a = enumC8289lg0;
        this.f43953b = str;
        this.f43954c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5847Rf0)) {
            return false;
        }
        C5847Rf0 c5847Rf0 = (C5847Rf0) obj;
        return this.f43952a == c5847Rf0.f43952a && GJ.a((Object) this.f43953b, (Object) c5847Rf0.f43953b) && GJ.a((Object) this.f43954c, (Object) c5847Rf0.f43954c);
    }

    public final int hashCode() {
        int hashCode = (this.f43953b.hashCode() + (this.f43952a.hashCode() * 31)) * 31;
        String str = this.f43954c;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        EnumC8289lg0 enumC8289lg0 = this.f43952a;
        return "ResourceId(type=" + ((Object) enumC8289lg0) + ", name=" + this.f43953b + ", packageName=" + this.f43954c + ")";
    }
}
