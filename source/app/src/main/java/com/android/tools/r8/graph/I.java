package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C5023Db;

public abstract class I {
    public static H a(H5 h52, C5023Db c5023Db, String str, C4798y c4798y) {
        StringBuilder sb2 = new StringBuilder("Invalid try catch range for ");
        sb2.append(C10656zq0.a(", ", c5023Db.f39558c, new C4693s8()));
        sb2.append(": ");
        sb2.append(str);
        sb2.append(".");
        if (c4798y.m()) {
            sb2.append(" In later version of R8, the method may be assumed not reachable.");
        }
        return new H(h52, sb2.toString());
    }

    public static H a(H5 h52, int i10, com.android.tools.r8.internal.W9 w92, String str, C4798y c4798y) {
        StringBuilder sb2 = new StringBuilder("Invalid stack map table at instruction index ");
        sb2.append(i10);
        sb2.append(": ");
        sb2.append((Object) w92);
        sb2.append(", error: ");
        sb2.append(str);
        sb2.append(".");
        if (c4798y.m()) {
            sb2.append(" In later version of R8, the method may be assumed not reachable.");
        }
        return new H(h52, sb2.toString());
    }
}
