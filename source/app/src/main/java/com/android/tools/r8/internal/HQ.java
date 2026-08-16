package com.android.tools.r8.internal;

public final class HQ {

    public int f40755a;

    public int f40756b;

    public Integer f40757c;

    public String f40758d;

    public GQ f40759e;

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("KmVersionRequirement(kind=");
        int i10 = this.f40755a;
        if (i10 == 0) {
            GJ.a("kind");
            throw null;
        }
        String str = "null";
        sb2.append(i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? "null" : "UNKNOWN" : "API_VERSION" : "COMPILER_VERSION" : "LANGUAGE_VERSION");
        sb2.append(", level=");
        int i11 = this.f40756b;
        if (i11 == 0) {
            GJ.a("level");
            throw null;
        }
        if (i11 == 1) {
            str = "WARNING";
        } else if (i11 == 2) {
            str = "ERROR";
        } else if (i11 == 3) {
            str = "HIDDEN";
        }
        sb2.append(str);
        sb2.append(", version=");
        GQ gq = this.f40759e;
        if (gq == null) {
            GJ.a("version");
            throw null;
        }
        sb2.append((Object) gq);
        sb2.append(", errorCode=");
        sb2.append((Object) this.f40757c);
        sb2.append(", message=");
        sb2.append(this.f40758d);
        sb2.append(')');
        return sb2.toString();
    }
}
