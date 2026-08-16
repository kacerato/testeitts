package com.android.tools.r8.internal;

import java.util.AbstractCollection;
import java.util.List;

public class SA {

    public final C2 f44143a;

    public final String f44144b;

    public final String f44145c;

    public final String f44146d;

    public final boolean f44147e;

    public final AbstractCollection f44148f;

    /* JADX WARN: Multi-variable type inference failed */
    public SA(C2 c22, String str, String str2, String str3, boolean z10, List list) {
        this.f44143a = c22;
        this.f44144b = str;
        this.f44145c = str2;
        this.f44146d = str3;
        this.f44147e = z10;
        this.f44148f = (AbstractCollection) list;
    }

    public static SA e() {
        C2 c22 = C2.O;
        int i10 = AbstractC7552hC.f48487c;
        return new SA(c22, "unused", "testing", null, true, C6190Xe0.f45779e);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractCollection, java.util.List<java.lang.String>] */
    public List<String> a() {
        return this.f44148f;
    }

    public String b() {
        return this.f44145c;
    }

    public C2 c() {
        return this.f44143a;
    }

    public String d() {
        return this.f44144b;
    }
}
