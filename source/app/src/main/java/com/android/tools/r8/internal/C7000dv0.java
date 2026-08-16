package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class C7000dv0 extends RuntimeException {
    public C7000dv0() {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C7000dv0(ArrayList arrayList) {
        super(r0.toString());
        StringBuilder sb2 = new StringBuilder("Message missing required fields: ");
        int size = arrayList.size();
        boolean z10 = true;
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            String str = (String) obj;
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            sb2.append(str);
        }
    }
}
