package com.android.tools.r8.internal;

public final class C8330lu {

    public final int f50133a;

    public final String f50134b;

    public final String f50135c;

    public final C6024Ug0 f50136d;

    public C8330lu(int i10, String str, String str2, C6024Ug0 c6024Ug0) {
        this.f50133a = i10;
        this.f50134b = str;
        this.f50135c = str2;
        this.f50136d = c6024Ug0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8330lu)) {
            return false;
        }
        C8330lu c8330lu = (C8330lu) obj;
        return this.f50133a == c8330lu.f50133a && GJ.a((Object) this.f50134b, (Object) c8330lu.f50134b) && GJ.a((Object) this.f50135c, (Object) c8330lu.f50135c) && GJ.a(this.f50136d, c8330lu.f50136d);
    }

    public final int hashCode() {
        return this.f50136d.hashCode() + ((this.f50135c.hashCode() + ((this.f50134b.hashCode() + (Integer.hashCode(this.f50133a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "EntryWrapper(id=" + this.f50133a + ", packageName=" + this.f50134b + ", type=" + this.f50135c + ", entry=" + ((Object) this.f50136d) + ")";
    }
}
