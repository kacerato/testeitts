package com.android.tools.r8.internal;

public final class C5829Qz {

    public final int f43768a;

    public final String f43769b;

    public final String f43770c;

    public final String f43771d;

    public final boolean f43772e;

    public C5829Qz(int i10, String str, String str2, String str3, boolean z10) {
        this.f43768a = i10;
        this.f43769b = str;
        this.f43770c = str2;
        this.f43771d = str3;
        this.f43772e = z10;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5829Qz)) {
            return false;
        }
        C5829Qz c5829Qz = (C5829Qz) obj;
        return this.f43768a == c5829Qz.f43768a && this.f43772e == c5829Qz.f43772e && this.f43769b.equals(c5829Qz.f43769b) && this.f43770c.equals(c5829Qz.f43770c) && this.f43771d.equals(c5829Qz.f43771d);
    }

    public final int hashCode() {
        return (this.f43771d.hashCode() * this.f43770c.hashCode() * this.f43769b.hashCode()) + this.f43768a + (this.f43772e ? 64 : 0);
    }

    public final String toString() {
        return this.f43769b + "." + this.f43770c + this.f43771d + " (" + this.f43768a + (this.f43772e ? " itf" : "") + ")";
    }
}
