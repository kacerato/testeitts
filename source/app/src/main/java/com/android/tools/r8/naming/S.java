package com.android.tools.r8.naming;

import com.android.tools.r8.naming.C10957k;
import java.util.ArrayList;
import java.util.List;

public abstract class S {

    public static final boolean f55746a = true;

    public static int a(List list, int i10, ArrayList arrayList) {
        int i11;
        if (!f55746a && i10 >= list.size()) {
            throw new AssertionError();
        }
        while (true) {
            i11 = i10 + 1;
            if (i11 < list.size()) {
                C10957k.b bVar = (C10957k.b) list.get(i10);
                C10957k.b bVar2 = (C10957k.b) list.get(i11);
                M0 m02 = bVar.f55969b;
                if (m02 == null) {
                    break;
                }
                M0 m03 = bVar2.f55971d;
                if (m03 == null) {
                    m03 = bVar2.f55969b;
                }
                if (m03 == null || !m02.equals(bVar2.f55969b)) {
                    break;
                }
                arrayList.add((C10957k.b) list.get(i10));
                i10 = i11;
            } else {
                break;
            }
        }
        arrayList.add((C10957k.b) list.get(i10));
        return i11;
    }
}
