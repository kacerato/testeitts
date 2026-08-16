package com.android.tools.r8.internal;

import java.util.AbstractCollection;
import java.util.List;

public class MR {

    public final C2 f42292a;

    public final String f42293b;

    public final String f42294c;

    public final String f42295d;

    public final boolean f42296e;

    public final AbstractCollection f42297f;

    /* JADX WARN: Multi-variable type inference failed */
    public MR(C2 c22, String str, String str2, String str3, boolean z10, List list) {
        this.f42292a = c22;
        this.f42293b = str;
        this.f42294c = str2;
        this.f42295d = str3;
        this.f42296e = z10;
        this.f42297f = (AbstractCollection) list;
    }

    public static MR a() {
        C2 c22 = C2.O;
        int i10 = AbstractC7552hC.f48487c;
        return new MR(c22, "j$/", "testing", null, true, C6190Xe0.f45779e);
    }
}
