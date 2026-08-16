package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class C6177Xa {

    public final C6899dH f45749a;

    public final ArrayList f45750b;

    public C6177Xa(C6899dH c6899dH, ArrayList arrayList) {
        this.f45749a = c6899dH;
        this.f45750b = arrayList;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("regs[");
        WG wg2 = new WG(((C6399aH) this.f45749a.c()).f46484b);
        while (wg2.hasNext()) {
            RG rg2 = (RG) wg2.next();
            sb2.append(rg2.a());
            sb2.append(b3.s.f32937c);
            sb2.append(rg2.getValue());
            sb2.append(", ");
        }
        sb2.append("], stack[");
        ArrayList arrayList = this.f45750b;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            sb2.append(obj);
            sb2.append(", ");
        }
        sb2.append("]");
        return sb2.toString();
    }
}
