package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.List;

public final class C4951Bu0 {

    public final List f39036a;

    public C4951Bu0(W90 w90) {
        GJ.c(w90, "typeTable");
        List list = w90.f45322d;
        if ((w90.f45321c & 1) == 1) {
            int i10 = w90.f45323e;
            GJ.b(list, "getTypeList(...)");
            ArrayList arrayList = new ArrayList(AbstractC6785cf.a(list));
            int i11 = 0;
            for (Object obj : list) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    throw new ArithmeticException("Index overflow has happened.");
                }
                M90 m90 = (M90) obj;
                if (i11 >= i10) {
                    m90.getClass();
                    L90 a10 = M90.a(m90);
                    a10.f41896e |= 2;
                    a10.f41898g = true;
                    m90 = a10.a();
                }
                arrayList.add(m90);
                i11 = i12;
            }
            list = arrayList;
        }
        GJ.b(list, "run(...)");
        this.f39036a = list;
    }
}
